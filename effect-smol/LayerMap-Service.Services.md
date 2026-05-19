Package: `effect`<br />
Module: `LayerMap`<br />

## LayerMap.Service.Services

Extracts the service requirements of the layers in a `LayerMap.Service`
definition.

**Signature**

```ts
type Services<Options> = Layers<Options> extends Layer.Layer<infer _A, infer _E, infer _R> ? _R : never
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/LayerMap.ts#L485)

Since v4.0.0