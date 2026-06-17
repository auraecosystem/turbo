scripts/upload-lobs.py
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

# Download the latest release
wget -O gerrit.war https://gerrit-releases.storage.googleapis.com/gerrit-3.14.0.war

# Initialize a new Gerrit site
java -jar gerrit.war init -d /path/to/gerrit/site_dir --dev --batch --install-all-plugins

# Start Gerrit
cd /path/to/gerrit/site_dir && bin/gerrit.sh start
# Run with Docker
docker run -d \
  -p 8080:8080 \
  -p 29418:29418 \
  --name gerrit \
  gerritcodereview/gerrit:latest
$npm install ws
