docker build -t smartide/dapr-trafficcontrol-mosquitto:1.0 ./mosquitto
docker build -t smartide/dapr-trafficcontrol-trafficcontrolservice:1.0 ../TrafficControlService
docker build -t smartide/dapr-trafficcontrol-finecollectionservice:1.0 ../FineCollectionService
docker build -t smartide/dapr-trafficcontrol-vehicleregistrationservice:1.0 ../VehicleRegistrationService
docker build -t smartide/dapr-trafficcontrol-simulation:1.0 ../Simulation
