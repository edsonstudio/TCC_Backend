#See https://aka.ms/containerfastmode to understand how Visual Studio uses this Dockerfile to build your images for faster debugging.

FROM mcr.microsoft.com/dotnet/core/aspnet:3.1-buster-slim AS base
WORKDIR /app
EXPOSE 80
EXPOSE 443

FROM mcr.microsoft.com/dotnet/core/sdk:3.1-buster AS build
WORKDIR /src
COPY ["./services/ECOM.API.Catalogo/ECOM.API.Products.csproj", "services/ECOM.API.Catalogo/"]
COPY ["./building blocks/ECOM.Core/ECOM.Core.csproj", "building blocks/ECOM.Core/"]
COPY ["./building blocks/ECOM.WebAPI.Core/ECOM.WebAPI.Core.csproj", "building blocks/ECOM.WebAPI.Core/"]
COPY ["./building blocks/ECOM.MessageBus/ECOM.MessageBus.csproj", "building blocks/ECOM.MessageBus/"]

RUN dotnet restore "services/ECOM.API.Catalogo/ECOM.API.Products.csproj"
COPY . .
WORKDIR "services/ECOM.API.Catalogo"
RUN dotnet build "ECOM.API.Products.csproj" -c Release -o /app/build

FROM build AS publish
RUN dotnet publish "ECOM.API.Products.csproj" -c Release -o /app/publish

FROM base AS final
WORKDIR /app
COPY --from=publish /app/publish .
#CMD ASPNETCORE_URLS=http://*:$PORT dotnet ECOM.API.Products.dll
ENTRYPOINT ["dotnet", "ECOM.API.Products.dll"]