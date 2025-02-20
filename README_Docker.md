- **Project Title & Overview:**
    
    "Online Shop – Hackathon Phase 1 Submission"
    
- **Task Descriptions & Implementations:**
    
  -  I worked on containerizing a Vite application using Docker and Docker Compose to ensure smooth deployment and easy management. The tasks included:
  Creating a Multi-Stage Dockerfile

    Used Node.js Alpine as a base image to keep it lightweight.
    Installed dependencies using npm ci for consistent builds.
    Built the application and copied only necessary files to the final container.
    Used serve -s dist to run the production build.
  Creating a docker-compose.yml File

    Defined a service to build and run the container.
    Mapped container port 3000 to the host for external access.
    Enabled automatic restart using restart: always for reliability.

    **Repository Management**
    git add Dockerfile
    git commit -m "feat: Initial commit - Dockerized Vite app"

    Maintained branches for feature development:
    git checkout -b docker-integration

    **Linux Commands & Scripts Used**
    docker build -t online-shop:latest .
    docker run -p 3000:3000 online-shop

    docker-compose up -d   # Run the container in detached mode
    docker-compose down    # Stop and remove containers

    docker ps          # Check running containers
    docker logs <id>   # View logs of the container
    docker exec -it <id> sh  # Access the container shell

    docker image prune -f   # Remove unused images
    docker system prune -a  # Remove all unused containers, images, and networks

    Improvements-
    Instead of serve, maybe try to use Nginx for better performance:


> [!NOTE]
>
>  -  Provide video demo link (3-5 minutes only, not more than 5 minutes)
     https://github.com/SunitMishra10/online_shop/blob/Hackathon/Recording%20for%20online%20shopping%20app.zip

---

