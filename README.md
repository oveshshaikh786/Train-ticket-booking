# 🚆 Train Ticket Booking System

A Java backend application for managing train bookings via a CLI interface.
Built with Spring Boot and JSON-based persistence. Frontend and Docker integration are planned for a future version.

---

## Features

- User sign up and login
- View available train schedules
- Book and cancel tickets
- JSON-based data storage (users.json, trains.json)

---

## Tech Stack

| Layer    | Technology              |
|----------|-------------------------|
| Backend  | Java, Spring Boot       |
| Storage  | JSON files              |
| Build    | Gradle                  |

---

## Getting Started

```bash
git clone https://github.com/oveshshaikh786/Train-ticket-booking.git
cd Train-ticket-booking
./gradlew build
java -jar build/libs/train-ticket-booking.jar
```

## CLI Menu

Sign Up
Login
View Trains
Book Ticket
Cancel Ticket

---

## Roadmap

- [ ] Connect to MySQL database
- [ ] Build React frontend
- [ ] Complete Docker setup

