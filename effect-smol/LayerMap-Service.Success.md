Package: `effect`<br />
Module: `LayerMap`<br />

## LayerMap.Service.Success

Extracts the services provided by the layers in a `LayerMap.Service`
definition.

**Signature**

```ts
type Success<Options> = Layers<Options> extends Layer.Layer<infer _A, infer _E, infer _R> ? _A : never
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/LayerMap.ts#L450)

Since v3.14.0