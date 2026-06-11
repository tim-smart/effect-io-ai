Package: `effect`<br />
Module: `HttpApiSecurity`<br />

## HttpApiSecurity.ApiKey

API key security scheme identifying the key name and whether it is read from a header, query parameter, or cookie.

**Signature**

```ts
export interface ApiKey extends HttpApiSecurity.Proto<Redacted> {
  readonly _tag: "ApiKey"
  readonly in: "header" | "query" | "cookie"
  readonly key: string
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HttpApiSecurity.ts#L74)

Since v4.0.0