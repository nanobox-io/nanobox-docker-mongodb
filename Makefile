# -*- mode: make; tab-width: 4; -*-
# vim: ts=4 sw=4 ft=make noet
all: build publish

LATEST:=3.0
stability?=latest
version?=$(LATEST)
dockerfile?=Dockerfile-$(version)

login:
	@vagrant ssh -c "docker login"

build:
	@echo "Building 'mongodb' image..."
	@vagrant ssh -c "docker build -f /vagrant/Dockerfile-${version} -t nanobox/mongodb /vagrant"

publish:
	@echo "Tagging 'mongodb:${version}-${stability}' image..."
	@vagrant ssh -c "docker tag -f nanobox/mongodb nanobox/mongodb:${version}-${stability}"
	@echo "Publishing 'mongodb:${version}-${stability}'..."
	@vagrant ssh -c "docker push nanobox/mongodb:${version}-${stability}"
ifeq ($(version),$(LATEST))
	@echo "Publishing 'mongodb:${stability}'..."
	@vagrant ssh -c "docker tag -f nanobox/mongodb nanobox/mongodb:${stability}"
	@vagrant ssh -c "docker push nanobox/mongodb:${stability}"
endif

clean:
	@echo "Removing all images..."
	@vagrant ssh -c "for image in \$$(docker images -q); do docker rmi -f \$$image; done"