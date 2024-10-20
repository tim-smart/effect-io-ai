# addError

Add an error response schema to the endpoint. The status code
will be inferred from the schema, otherwise it will default to 500.

To import and use `addError` from the "HttpApiEndpoint" module:

```ts
import * as HttpApiEndpoint from "@effect/platform/HttpApiEndpoint"
// Can be accessed like this
HttpApiEndpoint.addError
```

**Signature**

```ts
export declare const addError: {
  <E extends Schema.Schema.All>(
    schema: E,
    annotations?: { readonly status?: number | undefined }
  ): <Name extends string, Method extends HttpMethod, _Path, _P, _H, _S, _E, _R>(
    self: HttpApiEndpoint<Name, Method, _Path, _P, _H, _S, _E, _R>
  ) => HttpApiEndpoint<Name, Method, _Path, _P, _H, _S, _E | Schema.Schema.Type<E>, _R | Schema.Schema.Context<E>>
  <Name extends string, Method extends HttpMethod, _Path, _P, _H, _S, _E, _R, E extends Schema.Schema.All>(
    self: HttpApiEndpoint<Name, Method, _Path, _P, _H, _S, _E, _R>,
    schema: E,
    annotations?: { readonly status?: number | undefined }
  ): HttpApiEndpoint<Name, Method, _Path, _P, _H, _S, _E | Schema.Schema.Type<E>, _R | Schema.Schema.Context<E>>
}
```
