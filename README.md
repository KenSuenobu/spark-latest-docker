# Docker Container: Latest Vanilla Spark Installation

Just as the title says, this is a Docker Container that contains the latest
version of Spark.

Nothing else.  No special installation of Spark, no special features enabled,
just Spark.

## Included

- ubuntu:16.04 (Trusty)
- Spark 2.3.0 Binary Install
- Java 8 JDK (Latest)

## Pathing

Path for Spark is already set.  Spark is installed in /opt/spark, so you would
want to export `/opt/spark/work` to a local filesystem directory for Spark work.

Furthermore, you will need to expose ports 8080, 8081, and 4040 so that Spark
workers can communicate with the system as well.

Included in the `scripts/` directory are directories specifically set up to
expose the necessary ports.  Other command line parameters can be sent when calling
the scripts from the command line.
