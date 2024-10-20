# setSuccess

Set the schema for the success response of the endpoint. The status code
will be inferred from the schema, otherwise it will default to 200.

To import and use `setSuccess` from the "HttpApiEndpoint" module:

```ts
import * as HttpApiEndpoint from "@effect/platform/HttpApiEndpoint"
// Can be accessed like this
HttpApiEndpoint.setSuccess
```

**Signature**

```ts
export declare const setSuccess: {
  <S extends Schema.Schema.Any>(
    schema: S,
    annotations?: { readonly status?: number | undefined }
  ): <Name extends string, Method extends HttpMethod, _Path, _P, _H, _S, _E, _R>(
    self: HttpApiEndpoint<Name, Method, _Path, _P, _H, _S, _E, _R>
  ) => HttpApiEndpoint<Name, Method, _Path, _P, _H, Schema.Schema.Type<S>, _E, _R | Schema.Schema.Context<S>>
  <Name extends string, Method extends HttpMethod, _Path, _P, _H, _S, _E, _R, S extends Schema.Schema.Any>(
    self: HttpApiEndpoint<Name, Method, _Path, _P, _H, _S, _E, _R>,
    schema: S,
    annotations?: { readonly status?: number | undefined }
  ): HttpApiEndpoint<Name, Method, _Path, _P, _H, Schema.Schema.Type<S>, _E, _R | Schema.Schema.Context<S>>
}
```
