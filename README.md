# ala-cas-sample
ALA CAS sample deployment

Sample container-based setup of ALA CAS and its tools.

## Swarm deploy

```sh
. ./setenv.sh
docker stack deploy -c docker-compose.yml cas
```
