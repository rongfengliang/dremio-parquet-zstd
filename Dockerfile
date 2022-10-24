FROM  dremio/dremio-oss:23.0.1
USER root
COPY dremio.conf /opt/dremio/conf/dremio.conf
COPY --from=hengyunabc/arthas:latest /opt/arthas /opt/arthas
COPY zstd-jni-1.5.0-1.jar /opt/dremio/jars/3rdparty/
COPY libhadoop.so.1.0.0 /opt/dremio/lib/libhadoop.so
COPY dremio-sabot-kernel-23.0.1-202210141019030815-c1de8bcc.jar /opt/dremio/jars/dremio-sabot-kernel-23.0.1-202210141019030815-c1de8bcc.jar
USER dremio