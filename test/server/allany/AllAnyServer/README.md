# Julia API server for AllAnyServer

API to test code generation for oneof anyof allof

## Overview
This API server was generated by the [OpenAPI Generator](https://openapi-generator.tech) project.  By using the [openapi-spec](https://openapis.org) from a remote server, you can easily generate an API client.

- API version: 0.0.1
- Build package: org.openapitools.codegen.languages.JuliaServerCodegen


## Installation
Place the Julia files generated under the `src` folder in your Julia project. Include AllAnyServer.jl in the project code.
It would include the module named AllAnyServer.

Implement the server methods as listed below. They are also documented with the AllAnyServer module.
Launch a HTTP server with a router that has all handlers registered. A `register` method is provided in AllAnyServer module for convenience.

```julia
register(
    router::HTTP.Router,        # Router to register handlers in
    impl;                       # Module that implements the server methods
    path_prefix::String="",     # Prefix to be applied to all paths
    optional_middlewares...     # Optional middlewares to be applied to all handlers
)
```

Optional middlewares can be one or more of:
- `init`: called before the request is processed
- `pre_validation`: called after the request is parsed but before validation
- `pre_invoke`: called after validation but before the handler is invoked
- `post_invoke`: called after the handler is invoked but before the response is sent

The order in which middlewares are invoked are:
`init |> read |> pre_validation |> validate |> pre_invoke |> invoke |> post_invoke`


## API Endpoints

The following server methods must be implemented:

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*DefaultApi* | [**echo_anyof_base_type_post**](docs/DefaultApi.md#echo_anyof_base_type_post) | **POST** /echo_anyof_base_type | 
*DefaultApi* | [**echo_anyof_mapped_pets_post**](docs/DefaultApi.md#echo_anyof_mapped_pets_post) | **POST** /echo_anyof_mapped_pets | 
*DefaultApi* | [**echo_anyof_pets_post**](docs/DefaultApi.md#echo_anyof_pets_post) | **POST** /echo_anyof_pets | 
*DefaultApi* | [**echo_arrays_post**](docs/DefaultApi.md#echo_arrays_post) | **POST** /echo_arrays | 
*DefaultApi* | [**echo_oneof_base_type_post**](docs/DefaultApi.md#echo_oneof_base_type_post) | **POST** /echo_oneof_base_type | 
*DefaultApi* | [**echo_oneof_mapped_pets_post**](docs/DefaultApi.md#echo_oneof_mapped_pets_post) | **POST** /echo_oneof_mapped_pets | 
*DefaultApi* | [**echo_oneof_pets_post**](docs/DefaultApi.md#echo_oneof_pets_post) | **POST** /echo_oneof_pets | 



## Models

 - [AnyOfBaseType](docs/AnyOfBaseType.md)
 - [AnyOfMappedPets](docs/AnyOfMappedPets.md)
 - [AnyOfPets](docs/AnyOfPets.md)
 - [Cat](docs/Cat.md)
 - [Dog](docs/Dog.md)
 - [OneOfBaseType](docs/OneOfBaseType.md)
 - [OneOfMappedPets](docs/OneOfMappedPets.md)
 - [OneOfPets](docs/OneOfPets.md)
 - [Pet](docs/Pet.md)
 - [TypeWithAllArrayTypes](docs/TypeWithAllArrayTypes.md)



## Author

test@example.com
