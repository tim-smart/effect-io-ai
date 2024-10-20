# addError

Add an error schema to an `HttpApiGroup`, which is shared by all endpoints in the
group.

To import and use `addError` from the "HttpApiGroup" module:

```ts
import * as HttpApiGroup from "@effect/platform/HttpApiGroup"
// Can be accessed like this
HttpApiGroup.addError
```

**Signature**

```ts
export declare const addError: {
  <A, I, R>(
    schema: Schema.Schema<A, I, R>,
    annotations?: { readonly status?: number | undefined }
  ): <Name extends string, Endpoints extends HttpApiEndpoint.HttpApiEndpoint.All, Error, ErrorR>(
    self: HttpApiGroup<Name, Endpoints, Error, ErrorR>
  ) => HttpApiGroup<Name, Endpoints, Error | A, ErrorR | R>
  <Name extends string, Endpoints extends HttpApiEndpoint.HttpApiEndpoint.All, Error, ErrorR, A, I, R>(
    self: HttpApiGroup<Name, Endpoints, Error, ErrorR>,
    schema: Schema.Schema<A, I, R>,
    annotations?: { readonly status?: number | undefined }
  ): HttpApiGroup<Name, Endpoints, Error | A, ErrorR | R>
}
```
