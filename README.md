Must have postgres 12 running on port 5433
using rails 6.1.3.2

run rails db:create
run rails db:migrate
run rails db:seed
run rails server

let x = port where rails server runs

for service payload format 1:
localhost:x/guest_reservation/index?payload=1

for service payload format 2:
localhost:x/guest_reservation/index?payload=2

I hard-coded the payload into the def index of the controller, which should simulate the parameters being passed to this app, which would usually go into a Post function by being passed to it via an api, or a direct frontend to backend call. The hard-coded inputs, simulates how an api interacts with the controller's endpoints.

To check if the data is saved to the db, with guest,

rails c

Where the first GuestRecord is record with id=1

GuestRecord.all.first.guest_reservations

To simulate how multiple instances of the payload can be saved into the db, just revisit or reload the endpoint URL calls above
