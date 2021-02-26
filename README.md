<div align="center">
    <a href="https://edsont8.github.io/TCC_Frontend">
        <img src="https://edsont8.github.io/TCC_Frontend/assets/logoma3.png" alt="Dragon Store" width="150px" />
    </a>
</div>

[![All Contributors](https://img.shields.io/badge/Contribuitors-3-orange.svg?style=flat-square)](#contributors-)
[![Star on GitHub](https://img.shields.io/github/stars/edsont8/TCC_Backend.svg?style=social)](https://github.com/edsont8/TCC_Backend/stargazers)


# Introduction 
This is a project to conclude the Technical Course in Systems Development (TCC) at the Brazilian [School SENAI "Ary Torres"](https://www.sp.senai.br).
The project consists of an e-commerce website with front-end developed in [Angular 9](https://angular.io), back-end in [.NET Core 3.1](https://dotnet.microsoft.com/download/dotnet/3.1), [Entity Framework Core](https://docs.microsoft.com/pt-br/ef/core/) and [SQL Server](https://www.microsoft.com/pt-br/sql-server/sql-server-2019). Initially, it was managed in [Microsoft Azure DevOps](https://azure.microsoft.com/pt-br/services/devops/) and transferred to Github.

The source code of the Angular Front-end you can find in this repository: https://github.com/edsont8/TCC_Frontend and is hosted at this address: https://edsont8.github.io/TCC_Frontend 

# List of API's hosted on Heroku

1.	API - [Authentication](https://heroku-api-identity.herokuapp.com/swagger/index.html)
2.	API - [Clients](https://heroku-clients.herokuapp.com/swagger/index.html)
3.	API - Catalog of products
4.	API - Gateway (BFF)
5.	API - Payment
6.	API - Cart
7.	API - Orders



# Build in Docker Container: 
## How to host each API in container and host on Heroku in 14 steps
Requirements:
1.	Have [Docker](https://www.docker.com) installed on your computer
2.	Have [Heroku](https://www.heroku.com) installed on your computer

3.	Installing Heroku CLI and Creating an application
After creating an account on Heroku, you just have to click New and then Create new app:

<div align="center">
    <img src="docs/assets/New App Heroku-0.png" alt="Create New App" width="500px" />
</div>
<div align="center">
    <img src="docs/assets/New App Heroku-1.png" alt="Create New App" width="500px" />
</div>

4.  Now you just have to choose a name for an app and a region where the server will be. Your app name will determine your application URL, following the pattern < your-heroku-app-name >.herokuapp.com

<div align="center">
    <img src="docs/assets/New App Heroku-2.png" alt="Create New App" width="500px" />
</div>

5.  Run the cmd (Your Operacional Sistem CLI)

6.  Enter the API directory:

```bash
> cd OneDrive \ Desktop \ TCC_Backend \ FullAPI \ src \ services \ ECOM.API.Client
```

7.  Publish the Application:

```bash
> dotnet publish -c Release
```

8.  Enter the directory where the files were published:

```bash
> cd bin \ Release \ netcoreapp3.1 \ publish
```

9.  Replace the Dockerfile file with another with the following code:

```
FROM mcr.microsoft.com/dotnet/core/aspnet:3.1-buster-slim AS base
WORKDIR /app
COPY . .

CMD ASPNETCORE_URLS=http://*:$PORT dotnet ECOM.API.Client.dll
```

Note that not hard coding a port is very important, Heroku listens to the HTTP request in the port $PORT, which is not necessarily the port 80. When your application starts, the port expected by Heroku is going to be assigned to the variable. So you should use like this:

```
ASPNETCORE_URLS=http://*:$PORT
```

POSSIBLE ERROR:
```
crit: Microsoft.AspNetCore.Server.Kestrel[0]
Unable to start Kestrel.
System.Net.Sockets.SocketException (13): Permission denied
```

Replace the:

```
ENTRYPOINT ["dotnet", "ECOM.API.Client.dll"]
```

by command:

```
CMD ASPNETCORE_URLS=http://*:$PORT dotnet ECOM.API.Client.dll
```

10.  Now Build the application to transform it into an image in the docker:

```bash
> docker build -t heroku-clients -f Dockerfile -t heroku-clients . 
```

11.  Crie a TAG para poder subir a imagem para o Heroku:

```bash
> docker tag heroku-clients registry.heroku.com/heroku-clients/web
```

12.  Create the TAG in order to upload the image to Heroku:

```bash
> docker push registry.heroku.com/heroku-clients/web
```

13.  Finally create the release of the app on Heroku:

```bash
> heroku container:release web --app heroku-clients
```

Finally your API is hosted on Heroku, and to access it just log into your Dashboard on Heroku, click on the app you created and click on the OPEN APP button. If your API has a swagger, just type /swagger/index.html at the end of your API URL in the browser.

14.  If you want to view the application log inside Heroku, type the following command inside your cmd:

```bash
> heroku logs --app heroku-clients --tail
```


## Contributors ✨

<table>    
  <tr>
    <td align="center"><a href="https://github.com/edsont8"><img src="https://avatars1.githubusercontent.com/u/55901214?v=4?s=100" width="100px;"  alt=""/><br /><sub><b>Edson Costa</b></sub></a><br /><a href="https://github.com/edsont8/TCC_Backend/commits?author=edsont8" title="Documentation">📖 Commits</a></td>
    <td align="center"><a href="https://github.com/miguellz67"><img src="https://avatars1.githubusercontent.com/u/55901848?v=4?s=100" width="100px;" alt=""/><br /><sub><b>Luiz Miguel</b></sub></a><br /><a href="https://github.com/edsont8/TCC_Backend/commits?author=miguellz67" title="Documentation">📖 Commits</a></td>
    <td align="center"><a href="https://github.com/Pereiracode"><img src="https://avatars2.githubusercontent.com/u/55901172?v=4?s=100" width="100px;" alt=""/><br /><sub><b>Mateus Pereira</b></sub></a><br /><a href="https://github.com/edsont8/TCC_Backend/commits?author=Pereiracode" title="Documentation">📖 Commits</a></td>
  </tr>
</table>