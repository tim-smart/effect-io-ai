Package: `effect`<br />
Module: `HttpApiSecurity`<br />

## HttpApiSecurity.Basic

HTTP Basic authentication security scheme whose decoded credential is `Credentials`.

**Signature**

```ts
export interface Basic extends HttpApiSecurity.Proto<Credentials> {
  readonly _tag: "Basic"
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/HttpApiSecurity.ts#L86)

Since v4.0.0