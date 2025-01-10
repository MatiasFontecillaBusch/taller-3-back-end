## **Before anything**
You must have installed [NodeJS 18.18.0](https://nodejs.org/es) and [PostgreSQL](https://www.postgresql.org/download/) in your device. You also need to have installed **Sequelize CLI**. To do this, execute the following commands in your **Bash** console:

```bash
npm install -g sequelize-cli
npm install
```

---

## **Database Configuration**

To execute the migrations and seeders, you need to rename the `.env.example` file to `.env` and modify it with your PostgreSQL database credentials.

Here's an example of the required environment variables:

```bash
DB_HOST=localhost
DB_PORT=5432  # Default port for PostgreSQL
DB_DATABASE=nombre_base_de_datos  # Name of the PostgreSQL database
DB_USER=postgres  # PostgreSQL username
DB_PASSWORD=  # Your PostgreSQL password
TOKEN_SECRET=mysecretkey  # Secret key for tokens
```

---

## **Create Database and Run Migrations**

Once you have configured your `.env` file, execute the following commands in your **Bash** console:

1. **Create the database:**
   ```bash
   sequelize db:create
   ```

2. **Run migrations:**
   ```bash
   sequelize db:migrate
   ```

3. **Seed the database with initial data:**
   ```bash
   sequelize db:seed:all
   ```

---

## **Run the Project**

After running the migrations and seeders, you can start the project with:
```bash
npm run dev
```

This will start the backend, and your project will connect to the PostgreSQL database.