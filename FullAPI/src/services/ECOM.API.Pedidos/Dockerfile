#See https://aka.ms/containerfastmode to understand how Visual Studio uses this Dockerfile to build your images for faster debugging.

FROM mcr.microsoft.com/dotnet/core/aspnet:3.1-buster-slim AS base
WORKDIR /app
EXPOSE 80
EXPOSE 443

FROM mcr.microsoft.com/dotnet/core/sdk:3.1-buster AS build
WORKDIR /src
COPY ["./services/ECOM.API.Pedidos/ECOM.API.Pedidos.csproj", "services/ECOM.API.Pedidos/"]
COPY ["./building blocks/ECOM.Core/ECOM.Core.csproj", "building blocks/ECOM.Core/"]
COPY ["./building blocks/ECOM.WebAPI.Core/ECOM.WebAPI.Core.csproj", "building blocks/ECOM.WebAPI.Core/"]
COPY ["./building blocks/ECOM.MessageBus/ECOM.MessageBus.csproj", "building blocks/ECOM.MessageBus/"]

RUN dotnet restore "services/ECOM.API.Pedidos/ECOM.API.Pedidos.csproj"
COPY . .
WORKDIR "services/ECOM.API.Pedidos"
RUN dotnet build "ECOM.API.Pedidos.csproj" -c Release -o /app/build

FROM build AS publish
RUN dotnet publish "ECOM.API.Pedidos.csproj" -c Release -o /app/publish

FROM base AS final
WORKDIR /app
COPY --from=publish /app/publish .
ENTRYPOINT ["dotnet", "ECOM.API.Pedidos.dll"]