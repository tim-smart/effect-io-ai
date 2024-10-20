# middleware

Add `HttpMiddleware` to a `Handlers` group.

Any errors are required to have a corresponding schema in the API.
You can add middleware errors to an `HttpApiGroup` using the `HttpApiGroup.addError`
api.

To import and use `middleware` from the "HttpApiBuilder" module:

```ts
import * as HttpApiBuilder from "@effect/platform/HttpApiBuilder"
// Can be accessed like this
HttpApiBuilder.middleware
```

**Signature**

```ts
export declare const middleware: <E, R, E1, R1>(
  middleware: Handlers.Middleware<E, R, E1, R1>
) => <Endpoints extends HttpApiEndpoint.HttpApiEndpoint.All>(
  self: Handlers<E, R, Endpoints>
) => Handlers<E1, HttpApiEndpoint.HttpApiEndpoint.ExcludeProvided<R1>, Endpoints>
```
