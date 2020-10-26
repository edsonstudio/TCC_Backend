#See https://aka.ms/containerfastmode to understand how Visual Studio uses this Dockerfile to build your images for faster debugging.

FROM mcr.microsoft.com/dotnet/core/aspnet:3.1-buster-slim AS base
WORKDIR /app
EXPOSE 80
EXPOSE 443

FROM mcr.microsoft.com/dotnet/core/sdk:3.1-buster AS build
WORKDIR /src
COPY ["src/services/ECOM.API.Chat/ECOM.API.Chat.csproj", "src/services/ECOM.API.Chat/"]
RUN dotnet restore "src/services/ECOM.API.Chat/ECOM.API.Chat.csproj"
COPY . .
WORKDIR "/src/src/services/ECOM.API.Chat"
RUN dotnet build "ECOM.API.Chat.csproj" -c Release -o /app/build

FROM build AS publish
RUN dotnet publish "ECOM.API.Chat.csproj" -c Release -o /app/publish

FROM base AS final
WORKDIR /app
COPY --from=publish /app/publish .
ENTRYPOINT ["dotnet", "ECOM.API.Chat.dll"]