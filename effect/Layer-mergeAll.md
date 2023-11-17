# mergeAll

Merges all the layers together in parallel.

To import and use `mergeAll` from the "Layer" module:

```ts
import * as Layer from "effect/Layer"
// Can be accessed like this
Layer.mergeAll
```

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
