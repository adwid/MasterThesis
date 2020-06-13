#!/bin/bash

cd "$(dirname "$0")" || exit

./Foundation/install.sh
./Agenda/install.sh
./Carpooling/install.sh
./Rental/install.sh
