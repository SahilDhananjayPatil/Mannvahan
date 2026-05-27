@echo off

echo Running rider_cancel flow...
newman run "Downloads\A. Mannvahan Smoke Testing.postman_collection.json" -e "Downloads\QA.postman_environment.json" --folder "CLI" --env-var flow="rider_cancel"

echo Running driver_cancel flow...
newman run "Downloads\A. Mannvahan Smoke Testing.postman_collection.json" -e "Downloads\QA.postman_environment.json" --folder "CLI" --env-var flow="driver_cancel"

echo Running trip_complete flow...
newman run "Downloads\A. Mannvahan Smoke Testing.postman_collection.json" -e "Downloads\QA.postman_environment.json" --folder "CLI" --env-var flow="trip_complete"

echo All flows completed!
pause