# succeed

Constructs a layer from the specified value.

To import and use `succeed` from the "Layer" module:

```ts
import * as Layer from "effect/Layer"
// Can be accessed like this
Layer.succeed
```

**Signature**

```ts
export declare const succeed: {
  <I, S>(tag: Context.Tag<I, S>): (resource: Types.NoInfer<S>) => Layer<I>
  <I, S>(tag: Context.Tag<I, S>, resource: Types.NoInfer<S>): Layer<I>
}
```
