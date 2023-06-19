# mergeAll

Merges all the layers together in parallel.

Part of the `Layer` module, imported from `@effect/io/Layer`.

**Signature**

```ts
export declare const mergeAll: <Layers extends [Layer<any, any, never>, ...Layer<any, any, never>[]]>(
  ...layers: Layers
) => Layer<
  { [k in keyof Layers]: Layer.Context<Layers[k]> }[number],
  { [k in keyof Layers]: Layer.Error<Layers[k]> }[number],
  { [k in keyof Layers]: Layer.Success<Layers[k]> }[number]
>
```
