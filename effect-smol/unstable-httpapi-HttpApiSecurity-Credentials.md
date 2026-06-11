Package: `effect`<br />
Module: `HttpApiSecurity`<br />

## HttpApiSecurity.Credentials

Decoded credentials for HTTP Basic authentication.

**Signature**

```ts
export interface Credentials {
  readonly username: string
  readonly password: Redacted
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HttpApiSecurity.ts#L96)

Since v4.0.0