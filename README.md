# TUTO

## Setup

Démarrer les 3 conteneurs (instances):
- mongo1 (master)
- mongo2 (replica)
- mongo3 (replica)

```bash
docker-compose up -d
```

### Configurer le cluster sur master

```bash
docker exec -it mongo1 bash
```

```bash
/scripts/init_script.sh
```

### COnfigurer le cluster sur les replicas

```bash
docker exec -it mongo2 bash
```

```bash
/scripts/init_replicas.sh
```

## Insertion

Insérer un élément dans la base anto (depuis le master):

```bash
use anto
```

```bash
db.anto.insert({test: "test"})
```

Puis, depuis un réplica voir les changements:

```bash
use anto
```

```bash
db.anto.find()
```

## Supprimer une instance

```bash
docker stop mongo1
```

Et voir que ça marche encore sur l'instance mongo2

```bash
db.anto.find()
```

```bash
db.isMaster()
```
