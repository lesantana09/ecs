init:
	@echo "Terraform Plan"
	cd infra && terraform init -upgrade && cd ..

plan:
	@echo "Terraform Plan"
	cd infra && terraform plan && cd ..

validate:
	@echo "Terraform Plan"
	cd infra && terraform validate && cd ..

apply:
	@echo "Terraform Apply"
	cd infra && terraform apply -auto-approve && cd ..

destroy:
	@echo "Terraform Destroy"
	cd infra && terraform destroy -auto-approve && cd ..
