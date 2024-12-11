# Use the official Elasticsearch Docker image
FROM docker.elastic.co/elasticsearch/elasticsearch:8.9.2

# Set environment variables for single-node operation
ENV discovery.type=single-node
ENV xpack.security.enabled=false
ENV ES_JAVA_OPTS="-Xms512m -Xmx512m"

# Expose necessary ports
EXPOSE 9200 9300

# Copy custom Elasticsearch configuration
COPY config/elasticsearch.yml /usr/share/elasticsearch/config/elasticsearch.yml

# Start Elasticsearch
CMD ["elasticsearch"]
