# add

Add an `HttpApiEndpoint` to an `HttpApiGroup`.

To import and use `add` from the "HttpApiGroup" module:

```ts
import * as HttpApiGroup from "@effect/platform/HttpApiGroup"
// Can be accessed like this
HttpApiGroup.add
```

**Signature**

```ts
export declare const add: {
  <A extends HttpApiEndpoint.HttpApiEndpoint.All>(
    endpoint: A
  ): <Name extends string, Endpoints extends HttpApiEndpoint.HttpApiEndpoint.All, Error, ErrorR>(
    self: HttpApiGroup<Name, Endpoints, Error, ErrorR>
  ) => HttpApiGroup<Name, Endpoints | A, Error, ErrorR>
  <
    Name extends string,
    Endpoints extends HttpApiEndpoint.HttpApiEndpoint.All,
    Error,
    ErrorR,
    A extends HttpApiEndpoint.HttpApiEndpoint.All
  >(
    self: HttpApiGroup<Name, Endpoints, Error, ErrorR>,
    endpoint: A
  ): HttpApiGroup<Name, Endpoints | A, Error, ErrorR>
}
```
