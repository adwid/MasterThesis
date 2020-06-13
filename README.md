# Master Thesis
##### by Adrien Widart

## Description
`Agenda`, `Carpooling` and `Rental` are three services for scalable and extensible social networks.
The development is based on the DEVI approach. See the [thesis](./Thesis.pdf) for all explanations.

`Foundation` comes from a previous thesis (see the [repository](https://github.com/glovise15/MasterThesis)).

The files `.env` and `docker-compose.yml` have all the information required to generate the Docker images.

## Installation

To clone the project and include each module, enter:
```shell script
git clone --recurse-submodules https://github.com/adwid/MasterThesis
```

Then, run the following script to install all Node.js dependencies:
```shell script
./install.sh
```

Eventually, to build all Docker images:
```shell script
sed -i -E "s/(HOST=([0-9]+\.)+[0-9]+)/HOST=$address/" .env
sudo docker-compose build --parallel
```

## Execution
To run all microservices, enter the following command:
```shell script
sudo docker-compose up
```
The three services will be then available.

## Testing
It is possible to test the three modules thanks to the following command:
```shell script
mocha test_all_modules.js
```
