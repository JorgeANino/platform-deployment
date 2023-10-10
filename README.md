# Product Management API

## Table of Contents

1. [Introduction](#introduction)
2. [Installation](#installation)
3. [Endpoints](#endpoints)
4. [Filtering](#filtering)
5. [Products](#products)
6. [Testing](#testing)
7. [License](#license)

## Introduction

This is the product management API which allows users to create, read, update, and delete products. With features for filtering.

## Installation

1. Clone this repository:
    ```bash
    git clone git@github.com:JorgeANino/platform-deployment.git
    ```
2. Change to the project directory:
    ```bash
    cd platform-deployment
    ```
3. Run the following command
    ```bash
    sudo sh init_submodules.sh
    ```
4. cd into platform-docker:
    ```bash
    cd platform-docker
    ```
5. Run containers:
    ```bash
    sudo sh run_containers.sh
    ```

## Endpoints

- **List/Create Products**:
    - **URL**: `/api/v1/products/`
    - **Method**: `GET | POST`

- **Retrieve/Update/Delete a Product**:
    - **URL**: `/api/v1/products/<id>`
    - **Method**: `GET | PUT | PATCH | DELETE`

## Filtering

You can filter the products using the following query parameters:

- **name**: Filter products by name (case insensitive). For example:
    ```bash
    /api/v1/products/?name=iPhone
    ```

- **min_price** & **max_price**: Filter products by price range. For example:
    ```bash
    /api/v1/products/?min_price=100&max_price=1000
    ```

- **category**: Filter products by category. For example:
    ```bash
    /api/v1/products/?category=Electronics
    ```


- **multiple filters**: Filter products by any of the previous attributes. For example:
    ```bash
    /api/v1/products/?name=iPhone&min_price=10&max_price=100&category=Electronics
    ```

## Products

1. Open platform-backend shell:
    ```bash
    docker exec -it platform-backend /bin/bash
    ```
3. Run management command:
    ```bash
    python manage.py create_test_products --count 50
    ```
2. List all products:
    ```bash
    http://127.0.0.1:8000/api/v1/products/
    ```

## Testing

To run tests, do the following:

1. Open platform-backend shell:
    ```bash
    docker exec -it platform-backend /bin/bash
    ```
2. Run tests
    ```bash
    ./run_tests.sh
    ```

## License

This project is licensed under the MIT License. See [LICENSE](./LICENSE) for details.
