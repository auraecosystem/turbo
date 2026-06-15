git clone https://chromium.googlesource.com/website
cd website
 git clone https://chromium.googlesource.com/chromium/tools/depot_tools.git
export PATH=/path/to/depot_tools:$PATH
git clone https://chromium.googlesource.com/website
$ fetch website
 gclient sync
$ ./npmw build
$ git commit -a -m 'whatever'
$ git-cl upload
 ./npmw start
