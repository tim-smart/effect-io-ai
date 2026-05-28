Package: `effect`<br />
Module: `HttpApiSecurity`<br />

## HttpApiSecurity.Http

Http token security scheme whose decoded credential is a redacted token.

**Signature**

```ts
export interface Http extends HttpApiSecurity.Proto<Redacted> {
  readonly _tag: "Http"
  readonly scheme: string
  /** @internal */
  readonly schemeLength: number
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HttpApiSecurity.ts#L90)

Since v4.0.0