# Database Definition Language (DDL) Script

I have decided to use `sqlite3` for easy setup and code integration

### Data Setup

Create the database using any of the following:
```bash
cat database-script-0x01/schema.sql | sqlite3 air_bnb_clone.db
```
```bash
sqlite3 air_bnb_clone.db < database-script-0x01/schema.sql
```
```bash
sqlite3 air_bnb_clone.db ".read database-script-0x01/schema.sql"
```
