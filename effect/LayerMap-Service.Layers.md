Package: `effect`<br />
Module: `LayerMap`<br />

## LayerMap.Service.Layers

Extracts the layer type produced by a `LayerMap.Service` definition.

**Signature**

```ts
type Layers<Options> = Options extends { readonly lookup: (key: infer _K) => infer Layers } ? Layers
    : Options extends { readonly layers: infer Layers } ? Layers[keyof Layers]
    : never
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/LayerMap.ts#L440)

Since v3.14.0