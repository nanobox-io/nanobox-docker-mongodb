## MongoDB [![Build Status Image](https://travis-ci.org/nanobox-io/nanobox-docker-mongodb.svg)](https://travis-ci.org/nanobox-io/nanobox-docker-mongodb)

This is an MongoDB Docker image used to launch a MongoDB service on Nanobox. To use this image, add a data component to your `boxfile.yml` with the `nanobox/mongodb` image specified:

```yaml
data.db:
  image: nanobox/mongodb
```

## MongoDB Configuration Options
MongoDB components are configured in your `boxfile.yml`. All available configuration options are outlined below.

###### Quick Links
[version](#version)  
[objcheck](#objcheck)  
[log\_verbosity](#log-verbosity)  
[directoryperdb](#directoryperdb)  
[logappend](#logappend)  
[nojournal](#nojournal)  
[noscripting](#noscripting)

#### Overview of MongoDB Boxfile Settings
```yaml
data.db:
  image: nanobox/mongodb
  config:
    version: 3.0
    objcheck: true
    log_verbosity: 'v'
    directoryperdb: true
    logappend: true
    nojournal: false
    noscripting: false
```

### Version
When configuring a MongoDB service in your Boxfile, you can specify the version to use. The following version(s) are available:

- 2.6
- 3.0

**Note:** Due to version compatibility constraints, MongoDB versions cannot be changed after the service is created. To use a different version, you'll have to create a new MongoDB service and manually migrate data.

#### version
```yaml
# default setting
data.db:
  image: nanobox/mongodb
  config:
    version: 3.0
```

### ObjCheck
View the [MongoDB documentation](http://docs.mongodb.org/manual/reference/configuration-options/#diaglog) for details and configuration options.

#### objcheck
```yaml
#default setting
data.db:
  image: nanobox/mongodb
  config:
    objcheck: true
```

### Log Verbosity
View the [MongoDB documentation](http://docs.mongodb.org/manual/reference/configuration-options/#verbose) for details and configuration options.

#### log\_verbosity
```yaml
data.db:
  image: nanobox/mongodb
  config:
    log_verbosity: 'v'
```

### DirectoryPerDB
View the [MongoDB documentation](http://docs.mongodb.org/manual/reference/configuration-options/#directoryperdb) for details and configuration options.

#### directoryperdb
```yaml
#default setting
data.db:
  image: nanobox/mongodb
  config:
    directoryperdb: true
```

### LogAppend
View the [MongoDB documentation](http://docs.mongodb.org/manual/reference/configuration-options/#logappend) for details and configuration options.

#### logappend
```yaml
#default setting
data.db:
  image: nanobox/mongodb
  config:
    logappend: true
```

### NoJournal
View the [MongoDB documentation](http://docs.mongodb.org/manual/reference/configuration-options/#nojournal) for details and configuration options.

#### nojournal
```yaml
#default setting
data.db:
  image: nanobox/mongodb
  config:
    nojournal: false
```

### NoScripting
View the [MongoDB documentation](http://docs.mongodb.org/manual/reference/configuration-options/#noscripting) for details and configuration options.

#### noscripting
```yaml
#default setting
data.db:
  image: nanobox/mongodb
  config:
    noscripting: false
```

## Help & Support
This is a MongoDB Docker image provided by [Nanobox](http://nanobox.io). If you need help with this image, you can reach out to us in the [#nanobox IRC channel](http://webchat.freenode.net/?channels=nanobox). If you are running into an issue with the image, feel free to [create a new issue on this project](https://github.com/nanobox-io/nanobox-docker-mongodb/issues/new).

## License

Mozilla Public License, version 2.0
