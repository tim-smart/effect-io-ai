Package: `effect`<br />
Module: `LayerMap`<br />

## LayerMap.Service.Key

Extracts the key type accepted by a `LayerMap.Service` definition.

**Signature**

```ts
type Key<Options> = Options extends { readonly lookup: (key: infer K) => any } ? K
    : Options extends { readonly layers: infer Layers } ? keyof Layers
    : never
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/LayerMap.ts#L448)

Since v3.14.0