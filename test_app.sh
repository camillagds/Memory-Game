 sleep 5
 if curl "http://localhost:8080" | grep -q 'Click on a tile.'; then
   echo "Tests passed!"
   curl -X GET "http://localhost:8080"
   exit 0
 else
   echo "Tests failed!"
   exit 1
 fi