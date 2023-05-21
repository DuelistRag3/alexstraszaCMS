<br/>
<p align="center">
  <h3 align="center">AlexstraszaCMS</h3>

  <p align="center">
    AlexstraszaCMS is an Open Source Content Management System for World of Warcraft Private Servers.
    <br/>
    <br/>
    <a href="https://github.com/DuelistRag3/alexstraszaCMS"><strong>Explore the docs »</strong></a>
    <br/>
    <br/>
    <a href="https://github.com/DuelistRag3/alexstraszaCMS/issues">Report Bug</a>
    .
    <a href="https://github.com/DuelistRag3/alexstraszaCMS/issues">Request Feature</a>
  </p>
</p>

<div align="center">

![Downloads](https://img.shields.io/github/downloads/DuelistRag3/alexstraszaCMS/total?style=for-the-badge) 
![Release](https://img.shields.io/github/v/release/DuelistRag3/alexstraszaCMS?color=green&include_prereleases&style=for-the-badge)
![Contributors](https://img.shields.io/github/contributors/DuelistRag3/alexstraszaCMS?color=dark-green&style=for-the-badge) 
![Forks](https://img.shields.io/github/forks/DuelistRag3/alexstraszaCMS?style=for-the-badge) 
![Stargazers](https://img.shields.io/github/stars/DuelistRag3/alexstraszaCMS?style=for-the-badge) 
![Issues](https://img.shields.io/github/issues/DuelistRag3/alexstraszaCMS?style=for-the-badge) 
![License](https://img.shields.io/github/license/DuelistRag3/alexstraszaCMS?style=for-the-badge) 

</div>

## Table Of Contents

- [Table Of Contents](#table-of-contents)
- [About The Project](#about-the-project)
- [Built With](#built-with)
- [Getting Started](#getting-started)
  - [Prerequisites](#prerequisites)
  - [Installation](#installation)
- [Roadmap](#roadmap)
- [Contributing](#contributing)
  - [Creating A Pull Request](#creating-a-pull-request)
- [License](#license)
- [Authors](#authors)

## About The Project


This Description is work in progress

## Built With

AlexstraszaCMS is build ontop of Laravel and uses nWidart/laravel-modules and Shipu/themevel packages to generate as much flexabilty as possible

* [Laravel](https://github.com/laravel/laravel)
* [nWidart/laravel-modules](https://github.com/nWidart/laravel-modules)
* [Shipu/themevel](https://github.com/Shipu/themevel)

## Getting Started

The easiest way to start using AlexstraszaCMS is to use Laravels build-in Docker method, but normaly Docker is a Developement tool. For serious deployment you should consider a Webserver like apache2 or nginx.

### Prerequisites

<ins>Prerequisites when using Docker</ins>
* Docker
[Get Docker](https://docs.docker.com/get-docker/)

Everything else will be managed by docker itself

<ins>Prerequisites when using a webserver</ins>
* any webserver (apache2, nginx, etc..)
* composer installed
* PHP >= 8.1

| PHP Extensions |
| :------------- |
| Ctype          |
| cURL           |
| DOM            |
| Fileinfo       |
| Filter         |
| Hash           |
| Mbstring       |
| OpenSSL        |
| PCRE           |
| PDO            |
| Session        |
| Tokenizer      |
| XML            |
| ZIP            |

For detailed guides on how to deploy a Laravel application consider the Laravel Docs deployment section: https://laravel.com/docs/10.x/deployment

### Installation

<ins>The Docker way</ins>:
1. Install [Docker](https://docs.docker.com/get-docker/)

2. Clone the reposetory 

```sh
git clone https://github.com/DuelistRag3/alexstraszaCMS.git
```

3. Go into the reposetory folder and execude the sail command

```sh
./vendor/bin/sail up
```

<ins>The recommended way:</ins>

This section only covers on how to install AlexstraszaCMS on Linux (Ubuntu) to see a list of all operating system how to´s consult the [Wiki](https://github.com/DuelistRag3/alexstraszaCMS/wiki)

1. Install you favourite webserver ([Apache2 on Ubuntu](https://ubuntu.com/tutorials/install-and-configure-apache#1-overview))

2. Install php and all needed extension:
This command will install php8.2 and all needed extensions
```sh
sudo apt install openssl php8.2 php8.2-common php8.2-curl php8.2-mbstring php8.2-mysql php8.2-xml php8.2-zip
```
*if this command failes, you need to add php8.2 reposetory use [this](https://computingforgeeks.com/how-to-install-php-8-2-on-ubuntu/) tutorial*

3. Install [Composer](https://getcomposer.org/doc/00-intro.md)

4. Install [NodeJS](https://nodejs.org/en/download)

5. Clone the reposetory into your webserver document folder

```sh
git clone https://github.com/DuelistRag3/alexstraszaCMS.git
```

6. copy the .env.example file into the .env file

```sh
cp .env.example .env
```

7. Run installation commands

```sh
composer install && npm install
````

8. Use the guided installer on your domain: example.com/installer

## Roadmap

Under Construction

## Contributing

Contributions are what make the open source community such an amazing place to be learn, inspire, and create. Any contributions you make are **greatly appreciated**.
* If you have suggestions for adding or removing projects, feel free to [open an issue](https://github.com/DuelistRag3/alexstraszaCMS/issues/new) to discuss it, or directly create a pull request after you edit the *README.md* file with necessary changes.
* Please make sure you check your spelling and grammar.
* Create individual PR for each suggestion.
* Please also read through the [Code Of Conduct](https://github.com/DuelistRag3/alexstraszaCMS/blob/main/CODE_OF_CONDUCT.md) before posting your first idea as well.

### Creating A Pull Request

1. Fork the Project
2. Create your Feature Branch (`git checkout -b feature/AmazingFeature`)
3. Commit your Changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the Branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

## License

Distributed under the MIT License. See [LICENSE](https://github.com/DuelistRag3/alexstraszaCMS/blob/main/LICENSE.md) for more information.

## Authors

* **DuelistRag3** - *passionate world of warcraft dev* - [DuelistRag3](https://github.com/DuelistRag3) - *Project Leader*
