# Master Thesis
##### by Adrien Widart

## Description
[`Agenda`](https://github.com/adwid/MasterThesis-AgendaModule), 
[`Carpooling`](https://github.com/adwid/MasterThesis-CarpoolingModule) 
and [`Rental`](https://github.com/adwid/MasterThesis-RentingModule) 
are three services for scalable and extensible social networks.
The development is based on the DEVI approach. See the [thesis](./Thesis.pdf) for all explanations.

`Foundation` comes from a previous thesis (see the [repository](https://github.com/glovise15/MasterThesis) for more details).

The files `.env` and `docker-compose.yml` have all the information required to generate the Docker images.

## Installation

To clone the project and include each module, enter:
```shell script
git clone --recurse-submodules https://github.com/adwid/MasterThesis
```
Then, go inside the directory.

Run the following script to install all Node.js dependencies:
```shell script
./install.sh
```

Eventually, to build all Docker images (this takes several minutes):
```shell script
address=$(ifconfig | grep -E "([0-9]{1,3}\.){3}[0-9]{1,3}" | grep -v 127.0.0.1 | awk '{ print $2 }' | cut -f2 -d: | head -n1)
sed -i -E "s/(HOST=([0-9]+\.)+[0-9]+)/HOST=$address/" .env
sudo docker-compose pull && sudo docker-compose build --parallel
```
N.B.: The output will not be clearly legible because the images are built in parallel. 
To follow the build of each image, remove the option `--parallel`
(this operation will obviously take more time).

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
