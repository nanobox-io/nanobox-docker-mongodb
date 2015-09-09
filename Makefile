all: image tag

image:
	@vagrant up
	@vagrant ssh -c "sudo docker build -t nanobox/mongodb /vagrant"

tag:
	@vagrant ssh -c "sudo docker tag -f nanobox/mongodb nanobox/mongodb:3.0"
	@vagrant ssh -c "sudo docker tag -f nanobox/mongodb nanobox/mongodb:3.0-stable"
	@vagrant ssh -c "sudo docker tag -f nanobox/mongodb nanobox/mongodb:3.0-beta"
	@vagrant ssh -c "sudo docker tag -f nanobox/mongodb nanobox/mongodb:3.0-alpha"
	@vagrant ssh -c "sudo docker tag -f nanobox/mongodb nanobox/mongodb:stable"
	@vagrant ssh -c "sudo docker tag -f nanobox/mongodb nanobox/mongodb:beta"
	@vagrant ssh -c "sudo docker tag -f nanobox/mongodb nanobox/mongodb:alpha"

publish: push_30_stable

push_30_stable: push_30_beta
	@vagrant ssh -c "sudo docker push nanobox/mongodb"
	@vagrant ssh -c "sudo docker push nanobox/mongodb:3.0"
	@vagrant ssh -c "sudo docker push nanobox/mongodb:3.0-stable"
	@vagrant ssh -c "sudo docker push nanobox/mongodb:stable"

push_30_beta: push_30_alpha
	@vagrant ssh -c "sudo docker push nanobox/mongodb:3.0-beta"
	@vagrant ssh -c "sudo docker push nanobox/mongodb:beta"

push_30_alpha:
	@vagrant ssh -c "sudo docker push nanobox/mongodb:3.0-alpha"
	@vagrant ssh -c "sudo docker push nanobox/mongodb:alpha"

clean:
	@vagrant destroy -f
