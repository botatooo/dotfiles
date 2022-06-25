user_pref("browser.search.suggest.enabled", true);
user_pref("browser.urlbar.autoFill", true);
user_pref("browser.urlbar.suggest.history", true);
user_pref("browser.urlbar.suggest.bookmark", true);
user_pref("browser.urlbar.suggest.searches", true);
user_pref("browser.urlbar.maxRichResults", 10);
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
user_pref("accessibility.force_disabled", 0); // this probably breaks KDE stuff
user_pref("browser.pagethumbnails.capturing_disabled", false); // [HIDDEN PREF]
user_pref("browser.display.use_system_colors", true); // [DEFAULT: false]
user_pref("privacy.sanitize.sanitizeOnShutdown", false);
user_pref("privacy.resistFingerprinting.block_mozAddonManager", false); // [HIDDEN PREF]
user_pref("ui.prefersReducedMotion", 0); // [HIDDEN PREF]
user_pref("privacy.resistFingerprinting.letterboxing", false); // [HIDDEN PREF]
user_pref("general.useragent.override", "Mozilla/5.0 (Linux; rv:78.0) Gecko/20100101 Firefox/78.0");
user_pref("keyword.enabled", true);


user_pref("privacy.firstparty.isolate", false); // breaks too much stuff for now :(
user_pref("browser.display.use_document_fonts", 1); // why do they disable this lol
user_pref("privacy.clearOnShutdown.cache", false);
user_pref("privacy.clearOnShutdown.cookies", false);
user_pref("privacy.clearOnShutdown.downloads", false);
user_pref("privacy.clearOnShutdown.formdata", false);
user_pref("privacy.clearOnShutdown.history", false);
user_pref("privacy.clearOnShutdown.offlineApps", false);
user_pref("privacy.clearOnShutdown.openWindows", false);
user_pref("privacy.clearOnShutdown.sessions", false);
user_pref("privacy.clearOnShutdown.siteSettings", false);
user_pref("browser.sessionstore.privacy_level", 0);
user_pref("network.cookie.lifetimePolicy", 0);
user_pref("network.cookie.thirdparty.sessionOnly", false);
user_pref("network.cookie.thirdparty.nonsecureSessionOnly", false); // [FF58+]
user_pref("layers.acceleration.force-enabled", true);

// stupid dumb mozilla
user_pref("mousewheel.default.delta_multiplier_x", 60);
user_pref("mousewheel.default.delta_multiplier_y", 60);
user_pref("mousewheel.default.delta_multiplier_z", 60);
user_pref("mousewheel.min_line_scroll_amount", 90); // get back to 5 lines from the above changes
user_pref("extensions.pocket.enabled", false);
user_pref("browser.startup.page", 3);
user_pref("browser.privatebrowsing.autostart", false);
user_pref("browser.sessionstore.privacy_level", 0);
user_pref("privacy.clearOnShutdown.history", false);
user_pref("privacy.cpd.history", false);

// userchrome
user_pref("toolkit.legacyUserProfileCustomizations.stylesheets", true);
user_pref("browser.compactmode.show", true);
user_pref("browser.tabs.drawInTitlebar", true);
