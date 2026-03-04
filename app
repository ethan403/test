<!doctype html>
<html lang="zh-Hant">
<head>
  <meta charset="utf-8" />
  <meta name="viewport" content="width=device-width,initial-scale=1" />
  <title>Download App</title>
</head>
<body>
  <h2>Download App</h2>
  <p id="msg">Redirecting...</p>
  <p>
    <a id="iosBtn" href="#">App Store</a><br/>
    <a id="androidBtn" href="#">Android Download</a>
  </p>

  <script>
    const IOS_URL = "https://apps.apple.com/app/idXXXXXXXXXX"; // 先放你的 iOS 連結，沒有就留 landing page
    const ANDROID_URL = "https://github.com/<user>/<repo>/releases/download/v0.1.0/app-debug.apk";

    document.getElementById("iosBtn").href = IOS_URL;
    document.getElementById("androidBtn").href = ANDROID_URL;

    const ua = navigator.userAgent || "";
    const isIOS = /iPhone|iPad|iPod/i.test(ua);
    const isAndroid = /Android/i.test(ua);

    if (isIOS) {
      document.getElementById("msg").textContent = "Opening App Store...";
      if (IOS_URL.includes("id")) location.replace(IOS_URL);
      else document.getElementById("msg").textContent = "iOS version coming soon.";
    } else if (isAndroid) {
      document.getElementById("msg").textContent = "Downloading Android APK...";
      location.replace(ANDROID_URL);
    } else {
      document.getElementById("msg").textContent = "Choose your platform:";
    }
  </script>
</body>
</html>
