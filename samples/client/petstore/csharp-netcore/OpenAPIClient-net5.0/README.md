# Org.OpenAPITools - the C# library for the OpenAPI Petstore

This spec is mainly for testing Petstore server and contains fake endpoints, models. Please do not use this for any other purpose. Special characters: \" \\

This C# SDK is automatically generated by the [OpenAPI Generator](https://openapi-generator.tech) project:

- API version: 1.0.0
- SDK version: 1.0.0
- Build package: org.openapitools.codegen.languages.CSharpNetCoreClientCodegen

<a name="frameworks-supported"></a>
## Frameworks supported

<a name="dependencies"></a>
## Dependencies

- [RestSharp](https://www.nuget.org/packages/RestSharp) - 106.11.7 or later
- [Json.NET](https://www.nuget.org/packages/Newtonsoft.Json/) - 12.0.3 or later
- [JsonSubTypes](https://www.nuget.org/packages/JsonSubTypes/) - 1.8.0 or later
- [CompareNETObjects](https://www.nuget.org/packages/CompareNETObjects) - 4.61.0 or later
- [System.ComponentModel.Annotations](https://www.nuget.org/packages/System.ComponentModel.Annotations) - 5.0.0 or later

The DLLs included in the package may not be the latest version. We recommend using [NuGet](https://docs.nuget.org/consume/installing-nuget) to obtain the latest version of the packages:
```
Install-Package RestSharp
Install-Package Newtonsoft.Json
Install-Package JsonSubTypes
Install-Package System.ComponentModel.Annotations
Install-Package CompareNETObjects
```

NOTE: RestSharp versions greater than 105.1.0 have a bug which causes file uploads to fail. See [RestSharp#742](https://github.com/restsharp/RestSharp/issues/742).
NOTE: RestSharp for .Net Core creates a new socket for each api call, which can lead to a socket exhaustion problem. See [RestSharp#1406](https://github.com/restsharp/RestSharp/issues/1406).

<a name="installation"></a>
## Installation
Run the following command to generate the DLL
- [Mac/Linux] `/bin/sh build.sh`
- [Windows] `build.bat`

Then include the DLL (under the `bin` folder) in the C# project, and use the namespaces:
```csharp
using Org.OpenAPITools.Api;
using Org.OpenAPITools.Client;
using Org.OpenAPITools.Model;
```
<a name="packaging"></a>
## Packaging

A `.nuspec` is included with the project. You can follow the Nuget quickstart to [create](https://docs.microsoft.com/en-us/nuget/quickstart/create-and-publish-a-package#create-the-package) and [publish](https://docs.microsoft.com/en-us/nuget/quickstart/create-and-publish-a-package#publish-the-package) packages.

This `.nuspec` uses placeholders from the `.csproj`, so build the `.csproj` directly:

```
nuget pack -Build -OutputDirectory out Org.OpenAPITools.csproj
```

Then, publish to a [local feed](https://docs.microsoft.com/en-us/nuget/hosting-packages/local-feeds) or [other host](https://docs.microsoft.com/en-us/nuget/hosting-packages/overview) and consume the new package via Nuget as usual.

<a name="usage"></a>
## Usage

To use the API client with a HTTP proxy, setup a `System.Net.WebProxy`
```csharp
Configuration c = new Configuration();
System.Net.WebProxy webProxy = new System.Net.WebProxy("http://myProxyUrl:80/");
webProxy.Credentials = System.Net.CredentialCache.DefaultCredentials;
c.Proxy = webProxy;
```

<a name="getting-started"></a>
## Getting Started

```csharp
using System.Collections.Generic;
using System.Diagnostics;
using Org.OpenAPITools.Api;
using Org.OpenAPITools.Client;
using Org.OpenAPITools.Model;

namespace Example
{
    public class Example
    {
        public static void Main()
        {

            Configuration config = new Configuration();
            config.BasePath = "http://petstore.swagger.io:80/v2";
            var apiInstance = new AnotherFakeApi(config);
            var modelClient = new ModelClient(); // ModelClient | client model

            try
            {
                // To test special tags
                ModelClient result = apiInstance.Call123TestSpecialTags(modelClient);
                Debug.WriteLine(result);
            }
            catch (ApiException e)
            {
                Debug.Print("Exception when calling AnotherFakeApi.Call123TestSpecialTags: " + e.Message );
                Debug.Print("Status Code: "+ e.ErrorCode);
                Debug.Print(e.StackTrace);
            }

        }
    }
}
```

<a name="documentation-for-api-endpoints"></a>
## Documentation for API Endpoints

All URIs are relative to *http://petstore.swagger.io:80/v2*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*AnotherFakeApi* | [**Call123TestSpecialTags**](docs/AnotherFakeApi.md#call123testspecialtags) | **PATCH** /another-fake/dummy | To test special tags
*DefaultApi* | [**FooGet**](docs/DefaultApi.md#fooget) | **GET** /foo | 
*FakeApi* | [**FakeHealthGet**](docs/FakeApi.md#fakehealthget) | **GET** /fake/health | Health check endpoint
*FakeApi* | [**FakeOuterBooleanSerialize**](docs/FakeApi.md#fakeouterbooleanserialize) | **POST** /fake/outer/boolean | 
*FakeApi* | [**FakeOuterCompositeSerialize**](docs/FakeApi.md#fakeoutercompositeserialize) | **POST** /fake/outer/composite | 
*FakeApi* | [**FakeOuterNumberSerialize**](docs/FakeApi.md#fakeouternumberserialize) | **POST** /fake/outer/number | 
*FakeApi* | [**FakeOuterStringSerialize**](docs/FakeApi.md#fakeouterstringserialize) | **POST** /fake/outer/string | 
*FakeApi* | [**GetArrayOfEnums**](docs/FakeApi.md#getarrayofenums) | **GET** /fake/array-of-enums | Array of Enums
*FakeApi* | [**TestBodyWithFileSchema**](docs/FakeApi.md#testbodywithfileschema) | **PUT** /fake/body-with-file-schema | 
*FakeApi* | [**TestBodyWithQueryParams**](docs/FakeApi.md#testbodywithqueryparams) | **PUT** /fake/body-with-query-params | 
*FakeApi* | [**TestClientModel**](docs/FakeApi.md#testclientmodel) | **PATCH** /fake | To test \"client\" model
*FakeApi* | [**TestEndpointParameters**](docs/FakeApi.md#testendpointparameters) | **POST** /fake | Fake endpoint for testing various parameters 假端點 偽のエンドポイント 가짜 엔드 포인트 
*FakeApi* | [**TestEnumParameters**](docs/FakeApi.md#testenumparameters) | **GET** /fake | To test enum parameters
*FakeApi* | [**TestGroupParameters**](docs/FakeApi.md#testgroupparameters) | **DELETE** /fake | Fake endpoint to test group parameters (optional)
*FakeApi* | [**TestInlineAdditionalProperties**](docs/FakeApi.md#testinlineadditionalproperties) | **POST** /fake/inline-additionalProperties | test inline additionalProperties
*FakeApi* | [**TestJsonFormData**](docs/FakeApi.md#testjsonformdata) | **GET** /fake/jsonFormData | test json serialization of form data
*FakeApi* | [**TestQueryParameterCollectionFormat**](docs/FakeApi.md#testqueryparametercollectionformat) | **PUT** /fake/test-query-paramters | 
*FakeClassnameTags123Api* | [**TestClassname**](docs/FakeClassnameTags123Api.md#testclassname) | **PATCH** /fake_classname_test | To test class name in snake case
*PetApi* | [**AddPet**](docs/PetApi.md#addpet) | **POST** /pet | Add a new pet to the store
*PetApi* | [**DeletePet**](docs/PetApi.md#deletepet) | **DELETE** /pet/{petId} | Deletes a pet
*PetApi* | [**FindPetsByStatus**](docs/PetApi.md#findpetsbystatus) | **GET** /pet/findByStatus | Finds Pets by status
*PetApi* | [**FindPetsByTags**](docs/PetApi.md#findpetsbytags) | **GET** /pet/findByTags | Finds Pets by tags
*PetApi* | [**GetPetById**](docs/PetApi.md#getpetbyid) | **GET** /pet/{petId} | Find pet by ID
*PetApi* | [**UpdatePet**](docs/PetApi.md#updatepet) | **PUT** /pet | Update an existing pet
*PetApi* | [**UpdatePetWithForm**](docs/PetApi.md#updatepetwithform) | **POST** /pet/{petId} | Updates a pet in the store with form data
*PetApi* | [**UploadFile**](docs/PetApi.md#uploadfile) | **POST** /pet/{petId}/uploadImage | uploads an image
*PetApi* | [**UploadFileWithRequiredFile**](docs/PetApi.md#uploadfilewithrequiredfile) | **POST** /fake/{petId}/uploadImageWithRequiredFile | uploads an image (required)
*StoreApi* | [**DeleteOrder**](docs/StoreApi.md#deleteorder) | **DELETE** /store/order/{order_id} | Delete purchase order by ID
*StoreApi* | [**GetInventory**](docs/StoreApi.md#getinventory) | **GET** /store/inventory | Returns pet inventories by status
*StoreApi* | [**GetOrderById**](docs/StoreApi.md#getorderbyid) | **GET** /store/order/{order_id} | Find purchase order by ID
*StoreApi* | [**PlaceOrder**](docs/StoreApi.md#placeorder) | **POST** /store/order | Place an order for a pet
*UserApi* | [**CreateUser**](docs/UserApi.md#createuser) | **POST** /user | Create user
*UserApi* | [**CreateUsersWithArrayInput**](docs/UserApi.md#createuserswitharrayinput) | **POST** /user/createWithArray | Creates list of users with given input array
*UserApi* | [**CreateUsersWithListInput**](docs/UserApi.md#createuserswithlistinput) | **POST** /user/createWithList | Creates list of users with given input array
*UserApi* | [**DeleteUser**](docs/UserApi.md#deleteuser) | **DELETE** /user/{username} | Delete user
*UserApi* | [**GetUserByName**](docs/UserApi.md#getuserbyname) | **GET** /user/{username} | Get user by user name
*UserApi* | [**LoginUser**](docs/UserApi.md#loginuser) | **GET** /user/login | Logs user into the system
*UserApi* | [**LogoutUser**](docs/UserApi.md#logoutuser) | **GET** /user/logout | Logs out current logged in user session
*UserApi* | [**UpdateUser**](docs/UserApi.md#updateuser) | **PUT** /user/{username} | Updated user


<a name="documentation-for-models"></a>
## Documentation for Models

 - [Model.AdditionalPropertiesClass](docs/AdditionalPropertiesClass.md)
 - [Model.Animal](docs/Animal.md)
 - [Model.ApiResponse](docs/ApiResponse.md)
 - [Model.Apple](docs/Apple.md)
 - [Model.AppleReq](docs/AppleReq.md)
 - [Model.ArrayOfArrayOfNumberOnly](docs/ArrayOfArrayOfNumberOnly.md)
 - [Model.ArrayOfNumberOnly](docs/ArrayOfNumberOnly.md)
 - [Model.ArrayTest](docs/ArrayTest.md)
 - [Model.Banana](docs/Banana.md)
 - [Model.BananaReq](docs/BananaReq.md)
 - [Model.BasquePig](docs/BasquePig.md)
 - [Model.Capitalization](docs/Capitalization.md)
 - [Model.Cat](docs/Cat.md)
 - [Model.CatAllOf](docs/CatAllOf.md)
 - [Model.Category](docs/Category.md)
 - [Model.ChildCat](docs/ChildCat.md)
 - [Model.ChildCatAllOf](docs/ChildCatAllOf.md)
 - [Model.ClassModel](docs/ClassModel.md)
 - [Model.ComplexQuadrilateral](docs/ComplexQuadrilateral.md)
 - [Model.DanishPig](docs/DanishPig.md)
 - [Model.Dog](docs/Dog.md)
 - [Model.DogAllOf](docs/DogAllOf.md)
 - [Model.Drawing](docs/Drawing.md)
 - [Model.EnumArrays](docs/EnumArrays.md)
 - [Model.EnumClass](docs/EnumClass.md)
 - [Model.EnumTest](docs/EnumTest.md)
 - [Model.EquilateralTriangle](docs/EquilateralTriangle.md)
 - [Model.File](docs/File.md)
 - [Model.FileSchemaTestClass](docs/FileSchemaTestClass.md)
 - [Model.Foo](docs/Foo.md)
 - [Model.FormatTest](docs/FormatTest.md)
 - [Model.Fruit](docs/Fruit.md)
 - [Model.FruitReq](docs/FruitReq.md)
 - [Model.GmFruit](docs/GmFruit.md)
 - [Model.GrandparentAnimal](docs/GrandparentAnimal.md)
 - [Model.HasOnlyReadOnly](docs/HasOnlyReadOnly.md)
 - [Model.HealthCheckResult](docs/HealthCheckResult.md)
 - [Model.InlineResponseDefault](docs/InlineResponseDefault.md)
 - [Model.IsoscelesTriangle](docs/IsoscelesTriangle.md)
 - [Model.List](docs/List.md)
 - [Model.Mammal](docs/Mammal.md)
 - [Model.MapTest](docs/MapTest.md)
 - [Model.MixedPropertiesAndAdditionalPropertiesClass](docs/MixedPropertiesAndAdditionalPropertiesClass.md)
 - [Model.Model200Response](docs/Model200Response.md)
 - [Model.ModelClient](docs/ModelClient.md)
 - [Model.Name](docs/Name.md)
 - [Model.NullableClass](docs/NullableClass.md)
 - [Model.NullableShape](docs/NullableShape.md)
 - [Model.NumberOnly](docs/NumberOnly.md)
 - [Model.Order](docs/Order.md)
 - [Model.OuterComposite](docs/OuterComposite.md)
 - [Model.OuterEnum](docs/OuterEnum.md)
 - [Model.OuterEnumDefaultValue](docs/OuterEnumDefaultValue.md)
 - [Model.OuterEnumInteger](docs/OuterEnumInteger.md)
 - [Model.OuterEnumIntegerDefaultValue](docs/OuterEnumIntegerDefaultValue.md)
 - [Model.ParentPet](docs/ParentPet.md)
 - [Model.Pet](docs/Pet.md)
 - [Model.Pig](docs/Pig.md)
 - [Model.Quadrilateral](docs/Quadrilateral.md)
 - [Model.QuadrilateralInterface](docs/QuadrilateralInterface.md)
 - [Model.ReadOnlyFirst](docs/ReadOnlyFirst.md)
 - [Model.Return](docs/Return.md)
 - [Model.ScaleneTriangle](docs/ScaleneTriangle.md)
 - [Model.Shape](docs/Shape.md)
 - [Model.ShapeInterface](docs/ShapeInterface.md)
 - [Model.ShapeOrNull](docs/ShapeOrNull.md)
 - [Model.SimpleQuadrilateral](docs/SimpleQuadrilateral.md)
 - [Model.SpecialModelName](docs/SpecialModelName.md)
 - [Model.Tag](docs/Tag.md)
 - [Model.Triangle](docs/Triangle.md)
 - [Model.TriangleInterface](docs/TriangleInterface.md)
 - [Model.User](docs/User.md)
 - [Model.Whale](docs/Whale.md)
 - [Model.Zebra](docs/Zebra.md)


<a name="documentation-for-authorization"></a>
## Documentation for Authorization

<a name="api_key"></a>
### api_key

- **Type**: API key
- **API key parameter name**: api_key
- **Location**: HTTP header

<a name="api_key_query"></a>
### api_key_query

- **Type**: API key
- **API key parameter name**: api_key_query
- **Location**: URL query string

<a name="bearer_test"></a>
### bearer_test

- **Type**: Bearer Authentication

<a name="http_basic_test"></a>
### http_basic_test

- **Type**: HTTP basic authentication

<a name="http_signature_test"></a>
### http_signature_test


<a name="petstore_auth"></a>
### petstore_auth

- **Type**: OAuth
- **Flow**: implicit
- **Authorization URL**: http://petstore.swagger.io/api/oauth/dialog
- **Scopes**: 
  - write:pets: modify pets in your account
  - read:pets: read your pets
