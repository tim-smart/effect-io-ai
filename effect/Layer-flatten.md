# flatten

Flattens layers nested in the context of an effect.

To import and use `flatten` from the "Layer" module:

ts
import \* as Layer from "effect/Layer"
// Can be accessed like this
Layer.flatten
undefined

**Signature**

```ts
export declare const flatten: {
  <I, A, E2, R2>(tag: Context.Tag<I, Layer<A, E2, R2>>): <E, R>(self: Layer<I, E, R>) => Layer<A, E2 | E, R2 | R>
  <I, E, R, A, E2, R2>(self: Layer<I, E, R>, tag: Context.Tag<I, Layer<A, E2, R2>>): Layer<A, E | E2, R | R2>
}
```
