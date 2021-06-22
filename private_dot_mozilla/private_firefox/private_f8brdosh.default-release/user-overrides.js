user_pref("browser.startup.page", 1);
user_pref("browser.startup.homepage", "about:home");
user_pref("browser.newtabpage.enabled", true);
user_pref("browser.newtab.preload", true);
user_pref("geo.provider.use_gpsd", true); // [LINUX]
user_pref("extensions.webcompat-reporter.enabled", true); // [DEFAULT: false]
user_pref("network.dns.disableIPv6", false);
user_pref("keyword.enabled", true);
user_pref("browser.search.suggest.enabled", true);
user_pref("browser.urlbar.suggest.searches", true);
user_pref("browser.cache.disk.enable", true);
user_pref("browser.sessionstore.privacy_level", 0);
user_pref("browser.sessionstore.interval", 15000);
user_pref("browser.shell.shortcutFavicons", true);
user_pref("dom.security.https_only_mode_send_http_background_request", true);
user_pref("media.eme.enabled", true);
user_pref("media.peerconnection.enabled", true);
user_pref("webgl.disabled", false);
user_pref("webgl.enable-webgl2", true);
user_pref("media.getusermedia.screensharing.enabled", true);
user_pref("media.getusermedia.browser.enabled", true);
user_pref("media.getusermedia.audiocapture.enabled", true);
user_pref("dom.disable_window_move_resize", false);
user_pref("browser.link.open_newwindow", 3); // 1=most recent window or tab 2=new window, 3=new tab
user_pref("browser.link.open_newwindow.restriction", 1);
user_pref("dom.disable_open_during_load", false);
user_pref("dom.serviceWorkers.enabled", true);
user_pref("dom.push.enabled", true);
user_pref("dom.allow_cut_copy", true);
user_pref("dom.disable_beforeunload", false); // breaks Discord
user_pref("dom.vibrator.enabled", true);
user_pref("javascript.options.asmjs", true);
user_pref("javascript.options.wasm", true);
user_pref("media.navigator.enabled", true);
user_pref("dom.webaudio.enabled", true);
user_pref("accessibility.force_disabled", 1); // this probably breaks KDE stuff
user_pref("browser.pagethumbnails.capturing_disabled", false); // [HIDDEN PREF]
user_pref("browser.display.use_system_colors", true); // [DEFAULT: false]
user_pref("privacy.sanitize.sanitizeOnShutdown", false);
user_pref("privacy.resistFingerprinting.block_mozAddonManager", false); // [HIDDEN PREF]
user_pref("ui.prefersReducedMotion", 0); // [HIDDEN PREF]
user_pref("privacy.resistFingerprinting.letterboxing", false); // [HIDDEN PREF]
user_pref("general.useragent.override", "Mozilla/5.0 (Linux; rv:78.0) Gecko/20100101 Firefox/78.0");

user_pref("privacy.firstparty.isolate", false); // breaks too much stuff for now :(
