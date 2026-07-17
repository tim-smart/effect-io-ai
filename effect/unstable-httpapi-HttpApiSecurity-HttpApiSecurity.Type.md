Package: `effect`<br />
Module: `HttpApiSecurity`<br />

## HttpApiSecurity.HttpApiSecurity.Type

Extracts the credential type produced by a security scheme.

**Signature**

```ts
type Type<A> = A extends Proto<infer Out> ? Out : never
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/HttpApiSecurity.ts#L52)

Since v4.0.0