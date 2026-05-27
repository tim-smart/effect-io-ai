Package: `effect`<br />
Module: `HttpApiSecurity`<br />

## HttpApiSecurity.basic

Creates an HTTP Basic authentication security scheme.

**When to use**

Use to require HTTP Basic username/password credentials.

**Details**

Use `HttpApiBuilder.middlewareSecurity` to implement API middleware for this
security scheme.

**See**

- `bearer` for a Bearer token security scheme
- `apiKey` for an API-key security scheme

**Signature**

```ts
declare const basic: Basic
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HttpApiSecurity.ts#L206)

Since v4.0.0