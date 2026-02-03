.PHONY: deploy test clean

deploy:
	@echo "Deploying infrastructure..."
	cd terraform/environments/prod && terraform apply -auto-approve

test:
	@echo "Running tests..."
	npm test

clean:
	@echo "Cleaning build artifacts..."
	rm -rf dist/
	rm -rf node_modules/

validate-cfn:
	aws cloudformation validate-template --template-body file://deploy/cfn-template.yaml
