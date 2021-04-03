# Opera Widevine and H.264 support

Fix issues with Widevine and H.264 video support using Opera browser.

```sh
# 1
sudo cp /usr/share/code/libffmpeg.so /usr/lib/x86_64-linux-gnu/opera/libffmpeg.so

# 2
sudo cp /opt/google/chrome/WidevineCdm/_platform_specific/linux_x64/libwidevinecdm.so /opt/google/chrome/libwidevinecdm.so
```

The browser should be restarted before the video formats will be supported after these operations.