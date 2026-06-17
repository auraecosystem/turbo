rpmbuild --define "optflags -O3 -march=native" -ba your_package.spec
rpm --eval "%{optflags}"
$ curl https://yangcatalog.org/api/search/vendors
$ curl https://yangcatalog.org/api/search/catalog
git clone https://github.com/auraecosystem/turbo.git
cd turbo
tree -L 2
