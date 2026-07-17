Package: `effect`<br />
Module: `HttpApiSecurity`<br />

## HttpApiSecurity.bearer

Creates a Bearer token security scheme.

**When to use**

Use to require `Authorization: Bearer ...` credentials for an HTTP API group
or endpoint.

**Details**

Use `HttpApiBuilder.middlewareSecurity` to implement API middleware for this
security scheme.

**See**

- `apiKey` for an API-key security scheme
- `basic` for an HTTP Basic security scheme

**Signature**

```ts
declare const bearer: Http
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/HttpApiSecurity.ts#L154)

Since v4.0.0