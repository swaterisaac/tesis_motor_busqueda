FROM logstash:7.0.0
ADD ./jdbc/postgresql-42.2.24.jar logstash-core/lib/jars
RUN logstash-plugin install logstash-input-jdbc