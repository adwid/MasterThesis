#!/bin/bash

cd "$(dirname "$0")" || exit

cd user/userCommand && npm i
cd ../userQuery && npm i
cd ../..

cd actor/actorCommand && npm i
cd ../actorQuery && npm i
