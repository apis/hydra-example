#!/bin/sh

export SECRETS_COOKIE=my-secret-for-cookie-123456789 
export SECRETS_SYSTEM=my-secret-for-system-123456789
export OAUTH2_EXPOSE_INTERNAL_ERRORS=1
export LOG_LEVEL=debug
export URLS_LOGIN=http://localhost:3000/login
export URLS_CONSENT=http://localhost:3000/consent
#  URLS_LOGOUT=
export URLS_SELF_ISSUER=http://localhost:4444
export DSN=sqlite://./hydra/db.sqlite?_fk=true
#export DSN=sqlite:///home/apis/sandbox/sandbox/hydra/bin/db.sqlite?_fk=true

hydra/hydra serve all --dangerous-force-http

