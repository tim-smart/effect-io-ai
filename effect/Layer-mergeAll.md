Package: `effect`<br />
Module: `Layer`<br />

## Layer.mergeAll

Combines all the provided layers concurrently, creating a new layer with merged input, error, and output types.

**Signature**

```ts
declare const mergeAll: <Layers extends [Layer<never, any, any>, ...Array<Layer<never, any, any>>]>(...layers: Layers) => Layer<{ [k in keyof Layers]: Layer.Success<Layers[k]>; }[number], { [k in keyof Layers]: Layer.Error<Layers[k]>; }[number], { [k in keyof Layers]: Layer.Context<Layers[k]>; }[number]>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Layer.ts#L510)

Since v2.0.0