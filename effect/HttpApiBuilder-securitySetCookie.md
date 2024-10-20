# securitySetCookie

Set a cookie from an `HttpApiSecurity.HttpApiKey` instance.

You can use this api before returning a response from an endpoint handler.

```ts
ApiBuilder.handle("authenticate", (_) => ApiBuilder.securitySetCookie(security, "secret123"))
```

To import and use `securitySetCookie` from the "HttpApiBuilder" module:

```ts
import * as HttpApiBuilder from "@effect/platform/HttpApiBuilder"
// Can be accessed like this
HttpApiBuilder.securitySetCookie
```

**Signature**

```ts
export declare const securitySetCookie: (
  self: HttpApiSecurity.ApiKey,
  value: string | Redacted.Redacted,
  options?: Cookie["options"]
) => Effect.Effect<void>
```
