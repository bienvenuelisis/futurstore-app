import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:futurstore/core/features/l10n/l10n.dart';
import 'package:futurstore/core/utils/constants.dart';
import 'package:futurstore/core/utils/extensions/navigator.dart';
import 'package:futurstore/core/utils/extensions/theme_on_build_context.dart';
import 'package:futurstore/core/utils/mixins/form_mixin.dart';
import 'package:futurstore/features/packages/providers/file_downloader_func_provider.dart';
import 'package:futurstore/features/packages/providers/is_file_downloaded_provider.dart';
import 'package:futurstore/features/packages/providers/open_downloaded_file_func_provider.dart';
import 'package:futurstore/features/wallets/controllers/providers/connected_wallet_provider.dart';
import 'package:futurstore/features/wallets/pages/account_page.dart';

import '../../packages/data/models/index.dart';
import '../../wallets/controllers/services/assets.dart';
import '../data/models/book.dart';

class GetBookButton extends ConsumerStatefulWidget {
  const GetBookButton({
    required this.data,
    super.key,
  });

  final BookModel data;

  @override
  ConsumerState<GetBookButton> createState() => _GetBookButtonState();
}

class _GetBookButtonState extends ConsumerState<GetBookButton> with FormMixin {
  bool _boughtThisAsset = false;
  bool _buyingAsset = false;
  double _downloadProgress = 0;
  DownloadTaskStatus _downloadStatus = DownloadTaskStatus.initial;
  bool _started = false;

  @override
  void initState() {
    super.initState();

    unawaited(
      _isFileDownloaded().then((value) {
        setState(() {
          if (value) {
            _downloadStatus = DownloadTaskStatus.complete;

            _boughtThisAsset = true;
          } else {
            _hasThisAsset().then((value) {
              setState(() {
                _boughtThisAsset = value;
              });
            });
          }
        });
      }),
    );
  }

  bool get downloaded => _downloadStatus == DownloadTaskStatus.complete;
  bool get downloading =>
      _downloadProgress < 1 && _downloadStatus == DownloadTaskStatus.running;

  Future<void> _buyAsset() async {
    setState(() {
      _buyingAsset = true;
    });

    try {
      await ref.read(
        buyAssetProvider(
          assetId: int.parse(widget.data.assetId!),
          assetType: 'book',
          onSuccess: (_, alreadyPaid) async {
            setState(() {
              _buyingAsset = false;

              _boughtThisAsset = true;
            });

            await _start();
          },
        ).future,
      );
    } catch (e) {
      debugPrint(e.toString());
      error = e.toString();

      setState(() {
        _buyingAsset = false;
      });
    }
  }

  Future<bool> _hasThisAsset() async {
    try {
      return ref.read(
        hasThisAssetProvider(
          assetId: int.parse(widget.data.assetId!),
        ).future,
      );
    } catch (e) {
      debugPrint(e.toString());

      return false;
    }
  }

  Future<bool> _isFileDownloaded() async {
    try {
      return await ref.read(
        isBookFileDownloadedProvider(
          widget.data.id,
          widget.data.fileExtension,
        ).future,
      );
    } catch (e) {
      debugPrint(e.toString());

      return false;
    }
  }

  Future<void> _openDownloadedFile() async {
    try {
      return await ref.read(
        openDownloadedEbookFileProvider(
          widget.data.id,
          widget.data.fileExtension,
        ).future,
      );
    } catch (e) {
      debugPrint(e.toString());
    }
  }

  Future<void> _start() async {
    try {
      setState(() {
        _started = true;

        _downloadProgress = 0;

        _downloadStatus = DownloadTaskStatus.initial;
      });

      await ref.read(
        backgroundDownloadBookFileProvider(
          widget.data.fileMailUrl,
          widget.data.id,
          widget.data.fileExtension,
          onStatus: (status) {
            setState(
              () {
                _downloadStatus = status;

                if (_downloadStatus.isFinalState) {
                  _started = false;
                }
              },
            );
          },
          onProgress: (progress) {
            setState(
              () {
                _downloadProgress = progress;
              },
            );
          },
        ).future,
      );

      setState(() {
        _started = false;
      });
    } catch (e) {
      debugPrint(e.toString());
    }
  }

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;

    final connectedWallet = ref.watch(connectedWalletProvider);

    return Column(
      children: [
        if (connectedWallet.value == null)
          ElevatedButton(
            onPressed: () async {
              await context.pushTo(const AccountPage());
            },
            child: Text(
              l10n.connectToWalletBtnTex,
            ),
          )
        else
          downloaded
              ? ElevatedButton(
                  onPressed: _openDownloadedFile,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                    foregroundColor: Colors.white,
                  ),
                  child: const Text('Open'),
                )
              : downloading
                  ? const Center(child: CircularProgressIndicator.adaptive())
                  : ElevatedButton(
                      onPressed: _buyAsset,
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.green,
                        foregroundColor: Colors.white,
                      ),
                      child: _buyingAsset
                          ? Text('${l10n.buyingAsset}...')
                          : _started
                              ? Text('${l10n.gettingBook}...')
                              : Text(
                                  widget.data.price <= 0 || _boughtThisAsset
                                      ? l10n.getBook
                                      : '''${l10n.getBook} (${widget.data.price}$kRelaiTokenSymbol)''',
                                ),
                    ),
        if (hasError)
          Padding(
            padding: const EdgeInsets.all(8),
            child: Text(
              errorMessage,
              style: context.textTheme.bodySmall?.copyWith(
                color: context.colorScheme.error,
              ),
            ),
          ),
      ],
    );
  }
}
