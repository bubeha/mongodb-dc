# Base MongoDB setup with Docker

#### Install

Make .env file and fill it

```bash 
cp ./.env.example ./.env
```

#### First start:

To build the application for the first time you must run the script

```bash
make init
```

#### Run command to start MongoDB:

```bash 
$ make start
```

#### Stop MongoDB

```bash 
$ make down
```

#### Requirements

Docker 23+