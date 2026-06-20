Package: `effect`<br />
Module: `LayerMap`<br />

## LayerMap.Service.Error

Extracts the error type of the layers in a `LayerMap.Service` definition.

**Signature**

```ts
type Error<Options> = Layers<Options> extends Layer.Layer<infer _A, infer _E, infer _R> ? _E : never
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/LayerMap.ts#L459)

Since v3.14.0