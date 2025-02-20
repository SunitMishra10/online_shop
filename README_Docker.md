# 🛒 Online Shop – Hackathon Phase 1 Submission

## 🚀 Project Overview
This project focuses on **containerizing a Vite application** using **Docker** and **Docker Compose** to enable smooth deployment and easy management.

## 📌 Task Descriptions & Implementations

### ✅ **Containerizing the Vite App with Docker**
- **Created a Multi-Stage Dockerfile**
  - Used **Node.js Alpine** as a base image to keep it lightweight.
  - Installed dependencies using `npm ci` for consistent builds.
  - Built the application and copied only necessary files to the final container.
  - Used `serve -s dist` to run the production build.

### ✅ **Setting Up Docker Compose**
- Defined a service in `docker-compose.yml` to **build and run** the container.
- Mapped **container port `3000`** to the host for external access.
- Enabled automatic restart using:
  ```yaml
  restart: always
  ```

## 📂 Repository Management
### 🔹 Git Commands Used
```sh
git add Dockerfile
git commit -m "feat: Initial commit - Dockerized Vite app"
```
- Maintained **feature branches**:
  ```sh
  git checkout -b docker-integration
  ```

## 🖥️ Linux Commands & Scripts Used

### 🔹 **Building & Running Docker Containers**
```sh
docker build -t online-shop:latest .
docker run -p 3000:3000 online-shop
```
### 🔹 **Using Docker Compose**
```sh
docker-compose up -d   # Run the container in detached mode
docker-compose down    # Stop and remove containers
```
### 🔹 **Debugging & Maintenance**
```sh
docker ps          # Check running containers
docker logs <id>   # View logs of the container
docker exec -it <id> sh  # Access the container shell
```
```sh
docker image prune -f   # Remove unused images
docker system prune -a  # Remove all unused containers, images, and networks
```

## 🔧 Improvements & Suggestions
✅ Instead of using `serve`, consider using **Nginx** for better performance:
```sh
apk add --no-cache nginx
```

---

## 🎥 **Demo Video**
📌 **Watch the demonstration here:**  
[Hackathon Phase 1 Demo (3-5 min)](https://github.com/SunitMishra10/online_shop/blob/Hackathon/Recording%20for%20online%20shopping%20app.zip)

---

## 📜 License
This project is licensed under the **MIT License**.

---

👨‍💻 **Contributors:**  
- **Sunit Mishra**

