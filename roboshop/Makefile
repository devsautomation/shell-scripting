help:      ##print this message
	@fgrep -h "##" $(MAKEFILE_LIST) | fgrep -v fgrep | sed -e 's/\\$$//' | sed -e 's/##//'
frontend:  ## Install frontend Component
	@bash frontend.sh
cart:	   ## Install cart Component
	@bash cart.sh
catalogue: ## Install catalogue Component
	@bash catalogue.sh
mongo:     ## Install mongo Component
	@bash mongo.sh
mysql:     ## Install mysql Component
	@bash mysql.sh
payment:   ## Install payment Component
	@bash payment.sh
rabbitmq:  ## Install rabbitmq Component
	@bash rabbitmq.sh
redis:     ## Install redis Component
	@bash redis.sh
shipping:  ## Install shipping Component
	@bash shipping.sh
user:      ## Install user Component
	@bash user.sh
databases: redis mysql mongo rabbitmq  ## install all databases