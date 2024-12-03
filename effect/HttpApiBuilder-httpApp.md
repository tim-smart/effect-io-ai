# httpApp

Construct an `HttpApp` from an `HttpApi` instance.

To import and use `httpApp` from the "HttpApiBuilder" module:

```ts
import * as HttpApiBuilder from "@effect/platform/HttpApiBuilder"
// Can be accessed like this
HttpApiBuilder.httpApp
```

**Signature**

```ts
export declare const httpApp: Effect.Effect<
  HttpApp.Default<never, HttpRouter.HttpRouter.DefaultServices>,
  never,
  HttpApi.Api | Router | Middleware
>
```
