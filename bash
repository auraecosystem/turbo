rpmbuild --define "optflags -O3 -march=native" -ba your_package.spec
rpm --eval "%{optflags}"
