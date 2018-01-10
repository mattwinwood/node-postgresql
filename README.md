### Running the app

1. Ensure you have `Postgres.app` installed.

Follow the instructions for your platform [here](https://postgresapp.com).

2. Install all dependencies:

````
npm install
````

3. Create Databases, User, Seed DB
````
npm run configure
user: node_user pw: admin
````

4. Run
````
npm run dev
````

5. Example API Routes

• Lord of the Rings Example
````
ttp://localhost:3000/api/lotr
http://localhost:3000/api/lotr/allies
http://localhost:3000/api/lotr/guardians
http://localhost:3000/api/lotr/elves
http://localhost:3000/api/lotr/hobbits
http://localhost:3000/api/lotr/wizards
````

• Monster Example
````
http://localhost:3000/api/monsters
http://localhost:3000/api/monsters/habitats
http://localhost:3000/api/monsters/residence

