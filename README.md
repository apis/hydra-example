# hydra-example

### 1. Download latest Hydra with SQLite DB

https://github.com/ory/hydra/releases/

Code in this repo was tested with following version:

~~~~
hydra_1.9.2-sqlite_linux_64bit.tar.gz
~~~~

### 2. Unzip hydra archive into 'hydra' subfolder


### 3. Run initial migration

~~~~
hydra/hydra migrate sql sqlite://./hydra/db.sqlite?_fk=true
~~~~

### 4. Start Hydra

~~~~
./run_hydra.sh
~~~~

### 5. Create client

~~~~
hydra/hydra clients create \
    --endpoint http://localhost:4445 \
    --id scum-client \
    --secret secret \
    --token-endpoint-auth-method client_secret_post \
    --grant-types authorization_code,refresh_token \
    --response-types code,id_token \
    --scope openid,offline \
    --callbacks http://localhost:5555/callback
~~~~

### 6. Build and run idp-example 

~~~~
cd idp-example
go build main.go
./main 
~~~~

### 7. Build and run oid-client 

~~~~
cd oid-client
go build app.go
./app 
~~~~

### 8. Open URL http://localhost:5555/ in your browser

Login name and password should match (why not? we are in security bussiness after all!)
