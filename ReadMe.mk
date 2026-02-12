# Python Multi-App Docker Boilerplate

This repository provides a ready-to-use template for deploying two independent **Streamlit** applications simultaneously using **Docker Compose**. It is designed to demonstrate how to orchestrate multiple Python services with isolated environments and specific port routing.

---

## Architecture Overview

The project uses Docker to encapsulate each application. This ensures that the environment is consistent across all development and production setups.



* **App 1:** Mapped to port `80` (Standard HTTP port).
* **App 2:** Mapped to port `8080`.

---

## Prerequisites

Before you begin, ensure you have the following installed:
* **Docker** (Desktop or Engine)
* **Docker Compose**

---

## Getting Started

### 1. Clone the repository
```bash
git clone [https://github.com/your-username/your-repo-name.git](https://github.com/your-username/your-repo-name.git)
cd your-repo-name
```
### 2. Install Docker Compose
```bash
docker-compose up --build
```

### 3. Access the applications
App 1	http://localhost:80
App 2	http://localhost:8080

### 4. Stopping the project
To stop the containers and free up the ports type ctrl+C in the terminal or run
```bash
docker-compose down
```

## Project structure
.
├── app1/
│   ├── Dockerfile       # Build instructions for App 1
│   ├── main.py          # Streamlit code for App 1
│   └── requirements.txt  # Dependencies for App 1
├── app2/
│   ├── Dockerfile       # Build instructions for App 2
│   ├── main.py          # Streamlit code for App 2
│   └── requirements.txt  # Dependencies for App 2
├── docker-compose.yml    # Main orchestrator
└── README.md             # You are here

## Configuration details
The docker-compose.yml file is configured to build from the local contexts:

Service app1: Builds from ./app1/ and maps internal port 8501 to host port 80.

Service app2: Builds from ./app2/ and maps internal port 8501 to host port 8080.

Tip: If you modify your requirements.txt, remember to run docker-compose up --build again to refresh the images.

## Troubleshooting
Port already allocated
If you see an error like Bind for 0.0.0.0:8080 failed: port is already allocated, it means another program is using that port.
Solution: Open docker-compose.yml and change the left-hand side of the port mapping:
```yaml
ports:
  - "9000:8501"  # Change 8080 to 9000
```