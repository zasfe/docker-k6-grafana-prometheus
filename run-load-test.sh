#docker compose up -d influxdb grafana renderer reporter
docker compose up -d prometheus grafana renderer reporter
echo "--------------------------------------------------------------------------------------"
echo "Load testing with Grafana dashboard http://localhost:3000/d/k6/k6-load-testing-results"
echo "--------------------------------------------------------------------------------------"
#docker compose run --rm k6 run /scripts/ewoks.js
#docker compose run --rm k6 run /scripts/gabia.js
docker compose run --rm k6 run -o experimental-prometheus-rw /scripts/gabia.js
