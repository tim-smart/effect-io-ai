# setHeaders

Set the schema for the headers of the endpoint. The schema will be
used to validate the headers before the handler is called.

To import and use `setHeaders` from the "HttpApiEndpoint" module:

```ts
import * as HttpApiEndpoint from "@effect/platform/HttpApiEndpoint"
// Can be accessed like this
HttpApiEndpoint.setHeaders
```

**Signature**

```ts
export declare const setHeaders: {
  <Method extends HttpMethod, H extends Schema.Schema.Any>(
    schema: H & HttpApiEndpoint.ValidateHeaders<H>
  ): <Name extends string, _Path, _P, _H, _S, _E, _R>(
    self: HttpApiEndpoint<Name, Method, _Path, _P, _H, _S, _E, _R>
  ) => HttpApiEndpoint<Name, Method, _Path, _P, Schema.Schema.Type<H>, _S, _E, _R | Schema.Schema.Context<H>>
  <Name extends string, Method extends HttpMethod, _Path, _P, _H, _S, _E, _R, H extends Schema.Schema.Any>(
    self: HttpApiEndpoint<Name, Method, _Path, _P, _H, _S, _E, _R>,
    schema: H & HttpApiEndpoint.ValidateHeaders<H>
  ): HttpApiEndpoint<Name, Method, _Path, _P, Schema.Schema.Type<H>, _S, _E, _R | Schema.Schema.Context<H>>
}
```
