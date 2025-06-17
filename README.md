# 🧠 iClock ePush Biometric Server – Dockerized | eSSL & ZKTeco Integration

> **A ready-to-deploy Docker image for running the iClock biometric server (ePush technology) compatible with eSSL and ZKTeco devices. Works seamlessly on Linux and Windows servers.**

---

## 📄 Overview

This project provides a **Dockerized version of the iClock server**, designed to capture **real-time attendance data** from **biometric devices** (fingerprint, face recognition, etc.) that support **ePush** protocol.

🔌 It acts as a **push server** for devices by **eSSL** and **ZKTeco**, listening on port `8080`, and storing data in a MySQL backend.

This is ideal for institutions, schools, offices, and factories that want to run a centralized attendance system without installing Windows-based software.

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

### ⚙️ Database Configuration

1. **Create the Database**
   Create a database named `epushserver` and import the `iclock.sql` file into it.

2. **Update MySQL Credentials**
   Before building the Docker image, update your MySQL credentials in:

   ```
   iclock/WEB-INF/databaseconfig.properties
   ```

   Set values like:

   - `DB hostname`: `DB_URL_MYSQL`
   - `Username`: `DB_USERNAME_MYSQL`
   - `Password`: `DB_PASSWORD_MYSQL`

---

### 📦 Step 1: Build Docker Image

Clone the repo and build the image:

```bash
docker build -t datasecuretechnology/iclock-server .
```

---

### 🏃 Step 2: Run the Docker Container

Run the container and expose it on port `8080`:

```bash
docker run -d -p 8080:8080 --name iclock datasecuretechnology/iclock-server
```

---

## 🌐 Accessing the Web Portal

Once the container is up, access the application via:

```
http://your-domain.com:8080/iclock
```

> Replace `your-domain.com` with your server’s IP address or domain.

---

## 🔍 SEO Keywords (for discoverability)

- Docker ePush server
- ZKTeco ePush Linux server
- eSSL biometric Docker
- iClock Docker setup
- Biometric attendance system server
- Docker-based real-time biometric sync
- ZKTeco push server with MySQL
- ePush server on Ubuntu/Debian
