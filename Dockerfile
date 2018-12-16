FROM microsoft/dotnet:2.2-sdk-alpine3.8 AS build-env
WORKDIR /app

# Copy csproj and restore as distinct layers
COPY /src/heroku-core-22/*.csproj ./
RUN dotnet restore

# Copy everything else and build
COPY ./src/heroku-core-22 ./
RUN dotnet publish -c Release -o out

# Build runtime image
FROM microsoft/dotnet:aspnetcore-runtime
WORKDIR /app
COPY --from=build-env /app/out .
CMD ASPNETCORE_URLS=http://*:$PORT dotnet heroku-core-22.dll