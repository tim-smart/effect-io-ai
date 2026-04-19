Package: `effect`<br />
Module: `Brand`<br />

## Brand.Brand.FromConstructor

A utility type to extract a branded type from a `Constructor`.

**Signature**

```ts
type FromConstructor<C> = C extends Constructor<infer B> ? B : never
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Brand.ts#L114)

Since v2.0.0