Package: `@effect/platform`<br />
Module: `HttpApiBuilder`<br />

## HttpApiBuilder.securitySetCookie

Set a cookie from an `HttpApiSecurity.HttpApiKey` instance.

You can use this api before returning a response from an endpoint handler.

```ts
handlers.handle(
  "authenticate",
  (_) => HttpApiBuilder.securitySetCookie(security, "secret123")
)
```

**Signature**

```ts
declare const securitySetCookie: (self: HttpApiSecurity.ApiKey, value: string | Redacted.Redacted, options?: Cookie["options"]) => Effect.Effect<void>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/platform/src/HttpApiBuilder.ts#L1079)

Since v1.0.0