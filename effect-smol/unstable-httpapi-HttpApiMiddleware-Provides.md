Package: `effect`<br />
Module: `HttpApiMiddleware`<br />

## HttpApiMiddleware.Provides

Extracts the services provided by a middleware identifier.

**Signature**

```ts
type Provides<A> = A extends { readonly [TypeId]: { readonly provides: infer P } } ? P : never
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HttpApiMiddleware.ts#L191)

Since v4.0.0