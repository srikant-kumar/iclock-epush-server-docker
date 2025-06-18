# 🧠 iClock ePush Biometric Server – Dockerized | eSSL & ZKTeco Integration

> **A one-command Docker setup to run the iClock biometric server (ePush-compatible) for eSSL and ZKTeco devices – with automatic database import. Works seamlessly on Linux, Windows, and Apple Silicon (M1/M2) using Docker.**

---

## 📄 Overview

This project provides a **Dockerized version of the iClock server**, designed to capture **real-time attendance data** from biometric devices (fingerprint, face recognition, etc.) that support the **ePush** protocol.

🔌 It acts as a **push server** for devices by **eSSL** and **ZKTeco**, listening on port `8080`, and storing data in a MySQL backend.

This is ideal for institutions, schools, offices, and factories that want to run a centralized attendance system without Windows software.

🔒 **Default login for the web interface & ePush:**

- Username: `root`
- Password: `root`

---

## 🔧 Device Compatibility

✅ Works with biometric devices from:

- [**eSSL Security**](https://www.esslsecurity.com)
- **ZKTeco**
- Any device supporting **ePush Server Protocol**

📤 Supported Data:

- Real-time attendance logs
- Biometric user info
- Device status and sync logs

---

## 🚀 Quick Start

### 🧾 Prerequisites

- [Docker](https://www.docker.com/get-started) installed (v20+ recommended)
- Apple M1/M2 users are fully supported

---

### 📦 Step 1: Project Structure

Ensure your directory looks like this:

```

project-root/
├── docker-compose.yml
├── Dockerfile
├── iclock/
│   └── WEB-INF/
│       └── databaseconfig.properties
├── db/
│   └── iclock.sql
├── mysql/
│   └── my.cnf

```

- `iclock.sql` → MySQL schema dump (auto-imported)
- `databaseconfig.properties` → prefilled with DB credentials
- `my.cnf` → optional, minimal MySQL config file

---

### 🏗️ Step 2: Build and Run

Run this command once:

```bash
docker-compose up --build
```

That's it! It will:

- 🔧 Build the Tomcat + iClock app image
- 🐬 Start a MySQL 5 container with `epushserver` DB
- 🛠️ Automatically import `iclock.sql`
- 🔄 Link MySQL and Tomcat automatically
- 🌐 Expose the app on `http://localhost:8080/iclock`

---

### 🧪 Access the Web Portal

Once the app is running, open your browser:

```
http://localhost:8080/iclock
```

> Replace `localhost` with your server IP if deployed remotely.

---

## 🛠️ Internal Setup Details

### 🔧 `docker-compose.yml`

- Two containers:

  - `db`: MySQL 5 with preloaded SQL
  - `web`: Tomcat 8 with Java 8 and your iClock app

- Platform fix for M1/M2:

  ```yaml
  platform: linux/amd64
  ```

---

### 🧹 To Stop and Remove Containers

Run this command to stop and clean up the containers:

```bash
docker-compose down
```

This will:

- 🛑 Stop all running services
- 🧼 Remove containers, networks, and volumes defined in the `docker-compose.yml`

---

## 🧠 Developer Notes

- App is deployed at `/iclock` context path
- DB is automatically initialized on first run using `db/iclock.sql`
- MySQL config is in `mysql/my.cnf` (utf8mb4-safe, strict SQL mode)
- You can re-import data by deleting the volume or rebuilding containers

---

## 🔍 SEO Keywords (for discoverability)

- Docker ePush server
- ZKTeco ePush Linux server
- eSSL biometric Docker
- iClock Docker setup
- Biometric attendance system server
- Docker-based real-time biometric sync
- ZKTeco push server with MySQL
- ePush server on Ubuntu, Debian, macOS (M1/M2)

---

## ❤️ Credits

Maintained by **Srikant Kumar**
