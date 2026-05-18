Package: `effect`<br />
Module: `HttpApiBuilder`<br />

## HttpApiBuilder.securityDecode

Decodes credentials for an HTTP API security scheme from the current request,
supporting bearer, API key, and basic authentication inputs.

**Signature**

```ts
declare const securityDecode: <Security extends HttpApiSecurity.HttpApiSecurity>(self: Security) => Effect.Effect<HttpApiSecurity.HttpApiSecurity.Type<Security>, never, HttpServerRequest | Request.ParsedSearchParams>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HttpApiBuilder.ts#L420)

Since v4.0.0