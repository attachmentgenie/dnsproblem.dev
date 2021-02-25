build:
	docker build --target run .

tag:
	git tag -f $(VERSION)
	docker build --target run -t 623762986836.dkr.ecr.us-east-1.amazonaws.com/dnsproblem:$(VERSION) .

push:
	git push --tags
	docker push 623762986836.dkr.ecr.us-east-1.amazonaws.com/dnsproblem:$(VERSION)

update-theme:
	git submodule update --remote --rebase
