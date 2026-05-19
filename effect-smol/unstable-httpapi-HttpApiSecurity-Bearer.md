Package: `effect`<br />
Module: `HttpApiSecurity`<br />

## HttpApiSecurity.Bearer

Bearer token security scheme whose decoded credential is a redacted token.

**Signature**

```ts
export interface Bearer extends HttpApiSecurity.Proto<Redacted> {
  readonly _tag: "Bearer"
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HttpApiSecurity.ts#L78)

Since v4.0.0