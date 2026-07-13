Package: `effect`<br />
Module: `HttpApiBuilder`<br />

## HttpApiBuilder.securitySetCookie

Registers a pre-response handler that sets an API-key cookie on the outgoing
response, defaulting the cookie to `secure` and `httpOnly` unless overridden.

**Signature**

```ts
declare const securitySetCookie: (self: HttpApiSecurity.ApiKey, value: string | Redacted.Redacted, options?: Cookie["options"]) => Effect.Effect<void, never, HttpServerRequest>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HttpApiBuilder.ts#L542)

Since v4.0.0