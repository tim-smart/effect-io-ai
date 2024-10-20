# middlewareSecurityVoid

Make a middleware from an `HttpApiSecurity` instance, that can be used when
constructing a `Handlers` group.

This version does not supply any context to the handlers.

To import and use `middlewareSecurityVoid` from the "HttpApiBuilder" module:

```ts
import * as HttpApiBuilder from "@effect/platform/HttpApiBuilder"
// Can be accessed like this
HttpApiBuilder.middlewareSecurityVoid
```

**Signature**

```ts
export declare const middlewareSecurityVoid: <Security extends HttpApiSecurity.HttpApiSecurity, X, EM, RM>(
  self: Security,
  f: (credentials: HttpApiSecurity.HttpApiSecurity.Type<Security>) => Effect.Effect<X, EM, RM>
) => SecurityMiddleware<never, EM, RM>
```
