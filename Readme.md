# ModelBus 2.0.0 #

This Docker image allow to run a ModelBus 2.0.0 service.


# Sample command line

```
docker run -p 8080:8080 -p 61616:61616 \
  -e MODELBUS_IP=0.0.0.0 \
    pollen-metrology/modelbus:2.0.0
```
