# CodeIgniter 4 with Smarty 4 template engine

## About the project?

Base on my improved version of `ci4 - Build Your First Application`:

[Original improved](https://github.com/ampmonteiro/ci4-build-your-first-App).

What was added:

- take advantage of template engine like **Smarty php**

## What was used

- php: 8.1
- mysql: 8
- Docker
- CodeIgniter: 4.3.6
- Smarty php: 4.3 -> [more about it](https://www.smarty.net/documentation)

## side by side template code (Smarty vs Vanilla Ci4 template engine)

![Ci4 Template engine vs Latte template engine](smarty_vs_ci4_template.png 'Ci4 Template engine vs Latte template engine')

## image of the App

![CI4 News-Improved](app_screen.png 'News APp')

## Editor and Recommend extensions

- Editor: [VS Code](https://code.visualstudio.com) (By Microsoft)

- [PHP Intelephense](https://marketplace.visualstudio.com/items?itemName=bmewburn.vscode-intelephense-client) (By Ben Mewburn)

- [PHP Namespace Resolver](https://marketplace.visualstudio.com/items?itemName=MehediDracula.php-namespace-resolver) (By Mehedi Hassan)

- [PHP Awesome Snippets](https://marketplace.visualstudio.com/items?itemName=hakcorp.php-awesome-snippets) (By HakCorp)

- [Smarty Template Support](https://marketplace.visualstudio.com/items?itemName=aswinkumar863.smarty-template-support)(Aswin Kumar)

- To better developement it is taked advantages of this two wonderfull vscode extensions:
  - [Docker](https://marketplace.visualstudio.com/items?itemName=ms-azuretools.vscode-docker) (By Microsoft): to manage docker containers in vs code
  - [Dev Containers](https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.remote-containers) (By Microsoft): to use vscode inside of the container.

## Setup (using docker without compose)

php image: read the Dockerfile

mysql image in terminal:

```bash

docker run --name db_ci \
     -e MYSQL_ROOT_PASSWORD=secret \
     -e MYSQL_DATABASE=ci4 \
     -e MYSQL_USER=dev \
     -e MYSQL_PASSWORD=secret \
     -dp 3307:3306 mysql;
```
