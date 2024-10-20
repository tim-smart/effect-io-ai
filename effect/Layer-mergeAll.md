# mergeAll

Combines all the provided layers concurrently, creating a new layer with merged input, error, and output types.

To import and use `mergeAll` from the "Layer" module:

```ts
import * as Layer from "effect/Layer"
// Can be accessed like this
Layer.mergeAll
```

**Signature**

```ts
export declare const mergeAll: <Layers extends [Layer<never, any, any>, ...Array<Layer<never, any, any>>]>(
  ...layers: Layers
) => Layer<
  { [k in keyof Layers]: Layer.Success<Layers[k]> }[number],
  { [k in keyof Layers]: Layer.Error<Layers[k]> }[number],
  { [k in keyof Layers]: Layer.Context<Layers[k]> }[number]
>
```
