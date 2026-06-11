Package: `effect`<br />
Module: `HttpApiMiddleware`<br />

## HttpApiMiddleware.Requires

Extracts the services required to run a middleware implementation.

**Signature**

```ts
type Requires<A> = A extends { readonly [TypeId]: { readonly requires: infer R } } ? R : never
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HttpApiMiddleware.ts#L190)

Since v4.0.0