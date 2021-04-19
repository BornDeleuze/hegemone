HEGEMONE

A simple sinatra application using sqlite.

When run, users can sign up to store information on plants. Plant data with fields to store are name, Latin name, date plant, notes, and which garden it is in.

Users have full ability to create, show, update, and delete plants that they've created. User can also sort their plants into gardens, which users can use to see a list of plants specifically in that garden. 

This application uses sqlite3 to persist all this data, active record to actually interact with that database, and sinatra for the general relationship modeling and basic ruby code. This application was created first with the corneal gem. CSS is provided from Materialize, with some editing. 


