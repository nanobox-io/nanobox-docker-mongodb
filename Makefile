all: image tag

image:
	@vagrant up
	@vagrant ssh -c "sudo docker build -t nanobox/mongodb /vagrant"

tag:
	@vagrant ssh -c "sudo docker tag -f nanobox/mongodb nanobox/mongodb:3.0"
	@vagrant ssh -c "sudo docker tag -f nanobox/mongodb nanobox/mongodb:3.0-stable"
	@vagrant ssh -c "sudo docker tag -f nanobox/mongodb nanobox/mongodb:3.0-beta"
	@vagrant ssh -c "sudo docker tag -f nanobox/mongodb nanobox/mongodb:3.0-alpha"

publish:
	@vagrant ssh -c "sudo docker push nanobox/mongodb"
	@vagrant ssh -c "sudo docker push nanobox/mongodb:3.0"
	@vagrant ssh -c "sudo docker push nanobox/mongodb:3.0-stable"

push_30_stable:
	@vagrant ssh -c "sudo docker push nanobox/mongodb"
	@vagrant ssh -c "sudo docker push nanobox/mongodb:3.0"
	@vagrant ssh -c "sudo docker push nanobox/mongodb:3.0-stable"

push_30_beta:
	@vagrant ssh -c "sudo docker push nanobox/mongodb:3.0-beta"

push_30_alpha:
	@vagrant ssh -c "sudo docker push nanobox/mongodb:3.0-alpha"

clean:
	@vagrant destroy -f
