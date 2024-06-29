'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"flutter.js": "383e55f7f3cce5be08fcf1f3881f585c",
"canvaskit/skwasm.worker.js": "bfb704a6c714a75da9ef320991e88b03",
"canvaskit/skwasm.js": "f17a293d422e2c0b3a04962e68236cc2",
"canvaskit/canvaskit.js.symbols": "07c19b69fa5f53224712e8471c00344d",
"canvaskit/skwasm.js.symbols": "ab140650f4d351b74f4e6bca3e8dd0e0",
"canvaskit/chromium/canvaskit.js.symbols": "100d192729121969872b80009e47a5b7",
"canvaskit/chromium/canvaskit.js": "87325e67bf77a9b483250e1fb1b54677",
"canvaskit/chromium/canvaskit.wasm": "f9074e52c7e9c770f1130c6ed9e2677f",
"canvaskit/canvaskit.js": "5fda3f1af7d6433d53b24083e2219fa0",
"canvaskit/canvaskit.wasm": "f312edac4fb4c74852dc1a4f069ab100",
"canvaskit/skwasm.wasm": "7fe5c39ff8466de52fbb0c66473abbe3",
"flutter_bootstrap.js": "958ed3b66da504a0828e4fda2316ead5",
"version.json": "f596efca4f83188c2e30c116fea945ad",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"main.dart.js": "b6998ad72e2753af49fa37828c2c6db5",
"assets/NOTICES": "dcb841f2ec9a9555c19f43724d325e92",
"assets/AssetManifest.bin": "436bf518dcb1e16ca02d0efa8e9bca54",
"assets/assets/icons/Rate.svg": "cbd825bd1716aaeace94aaa02922dbc1",
"assets/assets/icons/Playing.svg": "974a6a45bbcd024c3332fae9f9b3157e",
"assets/assets/icons/Share.svg": "ece49ea4dc3082ba5ee5fff16b4897b3",
"assets/assets/icons/Hide.svg": "c424d25e6f43d8e415cf896839ff56bb",
"assets/assets/icons/Video.svg": "3857121d13fc35fa632104f70318add0",
"assets/assets/icons/Queue.svg": "804a2f60b20c7c8eacac66e3fc460a39",
"assets/assets/icons/Full%2520Screen.svg": "fe9b9b3baf10ac1280eb69674ae2cfe9",
"assets/assets/icons/Audiobook.svg": "413b5d776b1769af5ff824812bc7d938",
"assets/assets/icons/Save-filled.svg": "549c91c76e1ead08963254447eda47bc",
"assets/assets/icons/Downvote.svg": "bb78ac8a36b8e9122a95806fe283f42e",
"assets/assets/icons/User-filled.svg": "704d39d431326a58c6f4febe0488678c",
"assets/assets/icons/Save.svg": "5ba54673a0bce6bb795172447e90a20c",
"assets/assets/icons/Add.svg": "8731816a50b13cf7463e0c0107162843",
"assets/assets/icons/Font.svg": "8cc4517c7311dd72e2d00f37b7618ff2",
"assets/assets/icons/Arrow-Down.svg": "ec9428f6b0bf2ea50b93d6a506478c7a",
"assets/assets/icons/Next.svg": "6e5ba03f9531f8d240efb429a1a66cfc",
"assets/assets/icons/Notes.svg": "9c30a7264161d87d710ef1ba467fdb9e",
"assets/assets/icons/Shuffle.svg": "296919cfb0cc932ca39cfa7a653edb7c",
"assets/assets/icons/Private-1.svg": "b7016c0c6da6936958ea8ce529afd8b0",
"assets/assets/icons/Down.svg": "e71d9eec7fd7a7d769ec1be9a151d03e",
"assets/assets/icons/Friends.svg": "4e0c4ceb8eea6c0f428b1c0542eb3e9f",
"assets/assets/icons/More.svg": "8be31155b2eb65cf3d8f160e0370fc41",
"assets/assets/icons/Upvote.svg": "0c34257efe06cd1c4c6cb6caa9b6fe0e",
"assets/assets/icons/Adjust.svg": "8c18848990f85c97b3cf8be914510698",
"assets/assets/icons/Remove%2520from%2520Queue.svg": "98a831cc57aa242da2302b88d9ec1776",
"assets/assets/icons/Add%2520Friend.svg": "3d694c5d1aa64c893c5fe34269903cd2",
"assets/assets/icons/Show-filled.svg": "bc437927f5e7ddebb1434ad23c443909",
"assets/assets/icons/Miniplayer.svg": "d965cbfc0286ac145048cd8787707d84",
"assets/assets/icons/Up.svg": "cad47b1f937477560dc4dcc4999e2731",
"assets/assets/icons/Right.svg": "a1e46d76e9ccddd5138a6e8dbb5c2ad0",
"assets/assets/icons/Move2.svg": "09c9fed201bb943d21b2feb88df7d3f6",
"assets/assets/icons/Filter.svg": "e374bb27d6afbea741a76b164cac5aba",
"assets/assets/icons/Add%2520to%2520Library.svg": "d6e10f9077a01b84678711019755ec68",
"assets/assets/icons/History.svg": "316785c75c619d8ec007ad741a094ac0",
"assets/assets/icons/Play.svg": "79afeb1edf1cf43d72bc4304e0d7eb05",
"assets/assets/icons/Artist.svg": "e0531e92b04f67ed308a11a68e78e884",
"assets/assets/icons/Off.svg": "aa83a0f07b7e179a111a23cec8083d40",
"assets/assets/icons/Edit.svg": "bfa64223fa782df4b52313640bd4b699",
"assets/assets/icons/Add%2520to%2520Playlist.svg": "7eb22211098dfc23407dcb45cdd07cde",
"assets/assets/icons/Pin-filled.svg": "fae3b1958da13ce2fe80c350c74f7bb9",
"assets/assets/icons/Check.svg": "3bf827bbad0e813fa2134254e7581e04",
"assets/assets/icons/Search-filled.svg": "b469667fc83b3563761b3986b49ca563",
"assets/assets/icons/Prev.svg": "af0d2ba5bc07b920cab10e4a9bbd9238",
"assets/assets/icons/Sort.svg": "de0dabc8fa2a5e327a93c5f3149f938a",
"assets/assets/icons/Synced%2520Lyrics.svg": "74e8ca8d54bb02ea192cdf134dab6795",
"assets/assets/icons/Discover-filled.svg": "32c172148ad2ad108ab125384d587b07",
"assets/assets/icons/Grid.svg": "8ef52c8708a34820a21250b71ee837bd",
"assets/assets/icons/Translate.svg": "3c689e42073b66d0c1c31bfd508d5404",
"assets/assets/icons/Playlist.svg": "8ef90d9e0cd23ffa7576777ccda7d2ea",
"assets/assets/icons/Add%2520Simple.svg": "219670c8cf9a2747075970fc5df3d8b3",
"assets/assets/icons/Search.svg": "a13748b6c7f5ec836a738c87aee6ab62",
"assets/assets/icons/Loop.svg": "889752cce64fd9e6005b68b0a18482fb",
"assets/assets/icons/Add%2520to%2520Queue.svg": "c45d5210194d9c8fdfc0e9a437c00c43",
"assets/assets/icons/Translate-filled.svg": "e4986ce0cd6270b02031127f15280b5e",
"assets/assets/icons/Skip.svg": "cd69c8598b63aa613df414e09ae4deb2",
"assets/assets/icons/Discover.svg": "200a9954489d3902319ec2513690f1e8",
"assets/assets/icons/Camera.svg": "b9056c5f8c50dba680c03b0f91af262d",
"assets/assets/icons/Arrow-Up.svg": "87ba5f6a68b1d0addd67aaaa166f71f7",
"assets/assets/icons/Close.svg": "8b6d3422750102555d2975a0711a38ba",
"assets/assets/icons/Arrow-Right.svg": "97ce240a728301633f3534ed6f964e33",
"assets/assets/icons/Show.svg": "e352adcf2d9da6a6f1b852fe8e0f4443",
"assets/assets/icons/Friends-filled.svg": "8301de9b2720879ec32dac6e6e5feb59",
"assets/assets/icons/Folder.svg": "b9e02cbceb1aa148ec2a03cbfe06350d",
"assets/assets/icons/Synced%2520Lyrics-filled.svg": "5c9189f4d7a64eac8085be277a604586",
"assets/assets/icons/Home-filled.svg": "f4717ed596809cf43240ee5335bc0273",
"assets/assets/icons/Download.svg": "75ac80ce411a023962847fac8a2261f6",
"assets/assets/icons/List.svg": "b4fef657439de52a96587f2bb49a3f2d",
"assets/assets/icons/Library.svg": "900282d0488af56b01157d5608f4a768",
"assets/assets/icons/Left.svg": "f923a0865ca79b582841ba5dc29687a9",
"assets/assets/icons/Move.svg": "043b0729932662e2a3eebcdbba36dfde",
"assets/assets/icons/Private.svg": "10aba175159485d625442c70b52542f3",
"assets/assets/icons/Radio.svg": "0ccd65f2ad2db36ea7d765b264b2dca9",
"assets/assets/icons/Volume.svg": "52949f17e161f48f91e2979b8b8239ea",
"assets/assets/icons/Library-filled.svg": "2f2af8a0478ed9e324ee134ccd06cfbd",
"assets/assets/icons/Arrow-Left.svg": "0586282dbbaaeff9944874e60e836508",
"assets/assets/icons/Pause%2520Simple.svg": "d0fba1a635cf9621f2a63ed167cb7eb4",
"assets/assets/icons/Pause.svg": "ab2f4f722acbe8d8de2203d1d1a4b0cc",
"assets/assets/icons/Pin.svg": "25d99b634d9394831854792aa69baaac",
"assets/assets/icons/Like-filled.svg": "4846a01024842a8fbbe20dd31ced8bc4",
"assets/assets/icons/Check-filled.svg": "e4be62d017ba07f97a9596ace7a061ae",
"assets/assets/icons/Info.svg": "8bb368111e70a6a25d0234a8968f5da4",
"assets/assets/icons/Karaoke.svg": "5f2207465dcf5acd3a87af685e56b64f",
"assets/assets/icons/Lyrics.svg": "6ebc12dc3f33604e60a6e83191c548d6",
"assets/assets/icons/Checked.svg": "10dca4eceb57dc9a7ed27b7566e969cd",
"assets/assets/icons/Timer-filled.svg": "63d7fd0fd25d0e144c2a2f35e4f00be1",
"assets/assets/icons/Device.svg": "0c224db1356e8d1c5020a0ed4161b6a2",
"assets/assets/icons/User.svg": "9040f3417709e556e2d5e913d2b40ad5",
"assets/assets/icons/Home.svg": "149d93c18c8437ce021b959fa8631265",
"assets/assets/icons/Like.svg": "10a98b913dabf799108118f43ea41165",
"assets/assets/icons/Settings.svg": "55976a87b84980377acd0038d6f70623",
"assets/assets/icons/Dynamic.svg": "588909f40ffb76392c235ce99542e717",
"assets/assets/icons/Play%2520Simple.svg": "abb96d86e861a44eb2a52b205b9e826f",
"assets/assets/icons/News.svg": "927edbad0ccb246a4d9ea5bf27c205b2",
"assets/assets/icons/Notes-filled.svg": "c614455748cd733625d5b3b04fae14e6",
"assets/assets/icons/Album.svg": "050d953f9ea82703f2241ced555debc7",
"assets/assets/icons/Podcast.svg": "93605f110308f705add13f02fb8af75d",
"assets/assets/images/now_playing.png": "ccac053174cb457ddc659139a0ba900d",
"assets/shaders/ink_sparkle.frag": "ecc85a2e95f5e9f53123dcaf8cb9b6ce",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "e986ebe42ef785b27164c36a9abc7818",
"assets/AssetManifest.bin.json": "e311d5ff974bef130f81f75c4894aecd",
"assets/FontManifest.json": "dc3d03800ccca4601324923c0b1d6d57",
"assets/fonts/MaterialIcons-Regular.otf": "0db35ae7a415370b89e807027510caf0",
"assets/AssetManifest.json": "9f640f1ed6997053d6840eb4dd133a12",
"index.html": "9eebda15512e2ab842b99092fa1b5569",
"/": "9eebda15512e2ab842b99092fa1b5569",
"manifest.json": "16f58c80e40cde251483ef7e73e388e5"};
// The application shell files that are downloaded before a service worker can
// start.
const CORE = ["main.dart.js",
"index.html",
"flutter_bootstrap.js",
"assets/AssetManifest.bin.json",
"assets/FontManifest.json"];

// During install, the TEMP cache is populated with the application shell files.
self.addEventListener("install", (event) => {
  self.skipWaiting();
  return event.waitUntil(
    caches.open(TEMP).then((cache) => {
      return cache.addAll(
        CORE.map((value) => new Request(value, {'cache': 'reload'})));
    })
  );
});
// During activate, the cache is populated with the temp files downloaded in
// install. If this service worker is upgrading from one with a saved
// MANIFEST, then use this to retain unchanged resource files.
self.addEventListener("activate", function(event) {
  return event.waitUntil(async function() {
    try {
      var contentCache = await caches.open(CACHE_NAME);
      var tempCache = await caches.open(TEMP);
      var manifestCache = await caches.open(MANIFEST);
      var manifest = await manifestCache.match('manifest');
      // When there is no prior manifest, clear the entire cache.
      if (!manifest) {
        await caches.delete(CACHE_NAME);
        contentCache = await caches.open(CACHE_NAME);
        for (var request of await tempCache.keys()) {
          var response = await tempCache.match(request);
          await contentCache.put(request, response);
        }
        await caches.delete(TEMP);
        // Save the manifest to make future upgrades efficient.
        await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
        // Claim client to enable caching on first launch
        self.clients.claim();
        return;
      }
      var oldManifest = await manifest.json();
      var origin = self.location.origin;
      for (var request of await contentCache.keys()) {
        var key = request.url.substring(origin.length + 1);
        if (key == "") {
          key = "/";
        }
        // If a resource from the old manifest is not in the new cache, or if
        // the MD5 sum has changed, delete it. Otherwise the resource is left
        // in the cache and can be reused by the new service worker.
        if (!RESOURCES[key] || RESOURCES[key] != oldManifest[key]) {
          await contentCache.delete(request);
        }
      }
      // Populate the cache with the app shell TEMP files, potentially overwriting
      // cache files preserved above.
      for (var request of await tempCache.keys()) {
        var response = await tempCache.match(request);
        await contentCache.put(request, response);
      }
      await caches.delete(TEMP);
      // Save the manifest to make future upgrades efficient.
      await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
      // Claim client to enable caching on first launch
      self.clients.claim();
      return;
    } catch (err) {
      // On an unhandled exception the state of the cache cannot be guaranteed.
      console.error('Failed to upgrade service worker: ' + err);
      await caches.delete(CACHE_NAME);
      await caches.delete(TEMP);
      await caches.delete(MANIFEST);
    }
  }());
});
// The fetch handler redirects requests for RESOURCE files to the service
// worker cache.
self.addEventListener("fetch", (event) => {
  if (event.request.method !== 'GET') {
    return;
  }
  var origin = self.location.origin;
  var key = event.request.url.substring(origin.length + 1);
  // Redirect URLs to the index.html
  if (key.indexOf('?v=') != -1) {
    key = key.split('?v=')[0];
  }
  if (event.request.url == origin || event.request.url.startsWith(origin + '/#') || key == '') {
    key = '/';
  }
  // If the URL is not the RESOURCE list then return to signal that the
  // browser should take over.
  if (!RESOURCES[key]) {
    return;
  }
  // If the URL is the index.html, perform an online-first request.
  if (key == '/') {
    return onlineFirst(event);
  }
  event.respondWith(caches.open(CACHE_NAME)
    .then((cache) =>  {
      return cache.match(event.request).then((response) => {
        // Either respond with the cached resource, or perform a fetch and
        // lazily populate the cache only if the resource was successfully fetched.
        return response || fetch(event.request).then((response) => {
          if (response && Boolean(response.ok)) {
            cache.put(event.request, response.clone());
          }
          return response;
        });
      })
    })
  );
});
self.addEventListener('message', (event) => {
  // SkipWaiting can be used to immediately activate a waiting service worker.
  // This will also require a page refresh triggered by the main worker.
  if (event.data === 'skipWaiting') {
    self.skipWaiting();
    return;
  }
  if (event.data === 'downloadOffline') {
    downloadOffline();
    return;
  }
});
// Download offline will check the RESOURCES for all files not in the cache
// and populate them.
async function downloadOffline() {
  var resources = [];
  var contentCache = await caches.open(CACHE_NAME);
  var currentContent = {};
  for (var request of await contentCache.keys()) {
    var key = request.url.substring(origin.length + 1);
    if (key == "") {
      key = "/";
    }
    currentContent[key] = true;
  }
  for (var resourceKey of Object.keys(RESOURCES)) {
    if (!currentContent[resourceKey]) {
      resources.push(resourceKey);
    }
  }
  return contentCache.addAll(resources);
}
// Attempt to download the resource online before falling back to
// the offline cache.
function onlineFirst(event) {
  return event.respondWith(
    fetch(event.request).then((response) => {
      return caches.open(CACHE_NAME).then((cache) => {
        cache.put(event.request, response.clone());
        return response;
      });
    }).catch((error) => {
      return caches.open(CACHE_NAME).then((cache) => {
        return cache.match(event.request).then((response) => {
          if (response != null) {
            return response;
          }
          throw error;
        });
      });
    })
  );
}
