# List of sellers and orders

## This project uses SQLite and Prisma to build a backend development environment (database)
<br />

### Install the dependencies

```bash
npm install
```
### Create .env file inside prisma folder

```bash
DATABASE_URL="file:./dev.db"
```
### Configurate database

```bash
npx prisma migrate dev
```

### Open prisma interface

```bash
npx prisma studio
```

### Run backend

```bash
npm run dev
```