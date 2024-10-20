# addError

Add an error schema to an `HttpApi`, which is shared by all endpoints in the
`HttpApi`.

Useful for adding error types from middleware or other shared error types.

To import and use `addError` from the "HttpApi" module:

```ts
import * as HttpApi from "@effect/platform/HttpApi"
// Can be accessed like this
HttpApi.addError
```

**Signature**

```ts
export declare const addError: {
  <A, I, R>(
    schema: Schema.Schema<A, I, R>,
    annotations?: { readonly status?: number | undefined }
  ): <Groups extends HttpApiGroup.HttpApiGroup.Any, Error, ErrorR>(
    self: HttpApi<Groups, Error, ErrorR>
  ) => HttpApi<Groups, Error | A, ErrorR | R>
  <Groups extends HttpApiGroup.HttpApiGroup.Any, Error, ErrorR, A, I, R>(
    self: HttpApi<Groups, Error, ErrorR>,
    schema: Schema.Schema<A, I, R>,
    annotations?: { readonly status?: number | undefined }
  ): HttpApi<Groups, Error | A, ErrorR | R>
}
```
