# Individual Project 4
The purpose of this project is to build a publicly accessible auto-scaling container using Azure App Services and Flask. In the process, I will build and deploy a scaleable web-hosted app that implements an embedded LLM within Flask. 

## Local deployment
First, write a Dockerfile in the root repository. Next, install Docker Desktop on the local machine, create a new Dev Environment, and run the following:
1. Clone the repository: `git clone https://github.com/nogibjj/drktao-indproj4.git`
2. Set the current directory to where the root Dockerfile is located: `cd drktao-indproj4`
3. Build the Docker Image: `docker build -t onlineqa:latest .`
4. Run the Docker container: `docker run -p 23333:23333 onlineqa:latest`

## Dockerhub Login, Build, and Push
`docker login --username=drktao`
`docker build -t drktao/onlineqa`
`docker push drktao/onlineqa`

## Azure Deployment
1. Create a new web app service on Azure with the appropriate Docker Container settings
2. Add a new application setting called `WEBSITES_PORT` and set the key accordingly based on the root Dockerfile
3. Verify the domain

## App Domain
App: https://indproj4.azurewebsites.net/
The app has been successfully deployed. The user interface includes two tabs for navigation. One is the homepage, which provides a brief description of the app. The other tab allows the user to prompt an OpenAI LLM using a text box. The style and contents of the app are implemented using a `style.css` file and two `.html` files in the repository. In addition, `app.py` provides the structure and implementation of the app. 

Azure Web App: https://portal.azure.com/#@noahgiftgmail.onmicrosoft.com/resource/subscriptions/90d6c7b6-bba3-4372-9988-f9a9e01e2517/resourcegroups/FlaskAppGroup/providers/Microsoft.Web/sites/indproj4/appServices

Video Demo: 


