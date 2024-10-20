# addGroup

Add a `HttpApiGroup` to an `HttpApi`.

To import and use `addGroup` from the "HttpApi" module:

```ts
import * as HttpApi from "@effect/platform/HttpApi"
// Can be accessed like this
HttpApi.addGroup
```

**Signature**

```ts
export declare const addGroup: {
  <Group extends HttpApiGroup.HttpApiGroup.Any>(
    group: Group
  ): <Groups extends HttpApiGroup.HttpApiGroup.Any, Error, ErrorR>(
    self: HttpApi<Groups, Error, ErrorR>
  ) => HttpApi<Groups | Group, Error, ErrorR>
  <Group extends HttpApiGroup.HttpApiGroup.Any>(
    path: HttpRouter.PathInput,
    group: Group
  ): <Groups extends HttpApiGroup.HttpApiGroup.Any, Error, ErrorR>(
    self: HttpApi<Groups, Error, ErrorR>
  ) => HttpApi<Groups | Group, Error, ErrorR>
  <Groups extends HttpApiGroup.HttpApiGroup.Any, Error, ErrorR, Group extends HttpApiGroup.HttpApiGroup.Any>(
    self: HttpApi<Groups, Error, ErrorR>,
    group: Group
  ): HttpApi<Groups | Group, Error, ErrorR>
  <Groups extends HttpApiGroup.HttpApiGroup.Any, Error, ErrorR, Group extends HttpApiGroup.HttpApiGroup.Any>(
    self: HttpApi<Groups, Error, ErrorR>,
    path: HttpRouter.PathInput,
    group: Group
  ): HttpApi<Groups | Group, Error, ErrorR>
}
```
