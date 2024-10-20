# prefix

Add a path prefix to all endpoints in an `HttpApiGroup`. Note that this will only
add the prefix to the endpoints before this api is called.

To import and use `prefix` from the "HttpApiGroup" module:

```ts
import * as HttpApiGroup from "@effect/platform/HttpApiGroup"
// Can be accessed like this
HttpApiGroup.prefix
```

**Signature**

```ts
export declare const prefix: {
  (
    prefix: PathInput
  ): <Name extends string, Endpoints extends HttpApiEndpoint.HttpApiEndpoint.All, Error, ErrorR>(
    self: HttpApiGroup<Name, Endpoints, Error, ErrorR>
  ) => HttpApiGroup<Name, Endpoints, Error, ErrorR>
  <Name extends string, Endpoints extends HttpApiEndpoint.HttpApiEndpoint.All, Error, ErrorR>(
    self: HttpApiGroup<Name, Endpoints, Error, ErrorR>,
    prefix: PathInput
  ): HttpApiGroup<Name, Endpoints, Error, ErrorR>
}
```
