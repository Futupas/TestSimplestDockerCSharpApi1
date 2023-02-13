FROM mcr.microsoft.com/dotnet/sdk:7.0

WORKDIR /opt/app

COPY . .
# COPY TestSimplestDockerCSharpApi1 .

RUN dotnet restore TestWebApi2.csproj

RUN dotnet build TestWebApi2.csproj

RUN dotnet publish TestWebApi2.csproj -o ./out

WORKDIR /opt/app/out

# RUN dotnet c_sharp_server.dll

# ENTRYPOINT ["tail", "-f", "/dev/null"]
ENTRYPOINT ["dotnet", "TestWebApi2.dll"]
