# setPath

Set the schema for the path parameters of the endpoint. The schema will be
used to validate the path parameters before the handler is called.

To import and use `setPath` from the "HttpApiEndpoint" module:

```ts
import * as HttpApiEndpoint from "@effect/platform/HttpApiEndpoint"
// Can be accessed like this
HttpApiEndpoint.setPath
```

**Signature**

```ts
export declare const setPath: {
  <Path extends Schema.Schema.Any>(
    schema: Path & HttpApiEndpoint.ValidatePath<Path>
  ): <Name extends string, Method extends HttpMethod, _Path, _P, _H, _S, _E, _R>(
    self: HttpApiEndpoint<Name, Method, _Path, _P, _H, _S, _E, _R>
  ) => HttpApiEndpoint<Name, Method, Schema.Schema.Type<Path>, _P, _H, _S, _E, _R | Schema.Schema.Context<Path>>
  <Name extends string, Method extends HttpMethod, _Path, _P, _H, _S, _E, _R, Path extends Schema.Schema.Any>(
    self: HttpApiEndpoint<Name, Method, _Path, _P, _H, _S, _E, _R>,
    schema: Path & HttpApiEndpoint.ValidatePath<Path>
  ): HttpApiEndpoint<Name, Method, Schema.Schema.Type<Path>, _P, _H, _S, _E, _R | Schema.Schema.Context<Path>>
}
```
