# setPayload

Set the schema for the request body of the endpoint. The schema will be
used to validate the request body before the handler is called.

For endpoints with no request body, the payload will use the url search
parameters.

You can set a multipart schema to handle file uploads by using the
`HttpApiSchema.Multipart` combinator.

To import and use `setPayload` from the "HttpApiEndpoint" module:

```ts
import * as HttpApiEndpoint from "@effect/platform/HttpApiEndpoint"
// Can be accessed like this
HttpApiEndpoint.setPayload
```

**Signature**

```ts
export declare const setPayload: {
  <Method extends HttpMethod, P extends Schema.Schema.All>(
    schema: P & HttpApiEndpoint.ValidatePayload<Method, P>
  ): <Name extends string, _Path, _P, _H, _S, _E, _R>(
    self: HttpApiEndpoint<Name, Method, _Path, _P, _H, _S, _E, _R>
  ) => HttpApiEndpoint<Name, Method, _Path, Schema.Schema.Type<P>, _H, _S, _E, _R | Schema.Schema.Context<P>>
  <Name extends string, Method extends HttpMethod, _Path, _P, _H, _S, _E, _R, P extends Schema.Schema.All>(
    self: HttpApiEndpoint<Name, Method, _Path, _P, _H, _S, _E, _R>,
    schema: P & HttpApiEndpoint.ValidatePayload<Method, P>
  ): HttpApiEndpoint<Name, Method, _Path, Schema.Schema.Type<P>, _H, _S, _E, _R | Schema.Schema.Context<P>>
}
```
