# learning-application
At the end there should be an application that can display a list of courses, a list of customers, a course detail/info page and a detail/info page for customers. I would like to build a layout with HTML and CSS that has a sidebar on the left or an AppBar at the top to open the respective overview lists (courses and customers).

Am Ende sollte eine Anwendung stehen, die eine Liste der Kurse, eine Liste der Kunden, eine Kurs Detail-/Info-Seite und eine Detail-/Info-Seite für Kunden anzeigen kann. Gerne mit HTML und CSS ein Layout bauen welches links eine Sidebar oder oben eine AppBar hat über die man die jeweiligen Übersichtslisten (Kurse und Kunden) öffnen kann.

### Step 1 : Setting up an Existing Symfony Project

```
git clone https://github.com/Lea-Joyce/learning-application.git

cd learning-application/

composer install
```

### Step 2 : Database Configuration

You'll probably also need to customize your .env file and do a few other project-specific tasks (e.g. creating a database).

```
php bin/console about
```

### Step 3 : Create Database and Run Migration

```
php bin/console doctrine:database:create

php bin/console make:migration
```

### Step 4 : Data Fixtures

Please import the file symfony_test.sql

### Step 5 : Running Symfony Application

``` 
symfony server:start 
```





