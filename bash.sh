npm install -g elm
brew install elm
rpmbuild --define "optflags -O3 -march=native" -ba your_package.spec
rpm --eval "%{optflags}"
$ curl https://yangcatalog.org/api/search/vendors
$ curl https://yangcatalog.org/api/search/catalog
git clone https://github.com/auraecosystem/turbo.git
cd turbo
tree -L 2
npm install -g elm-live
npm install -g create-elm-app
create-elm-app my-app
cd my-app
npm start
npx elm-live src/Main.elm --open -- --output=main.js
mkdir my-elm-app
cd my-elm-app
elm init
