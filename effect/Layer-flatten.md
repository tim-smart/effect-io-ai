# flatten

Flattens layers nested in the context of an effect.

To import and use `flatten` from the "Layer" module:

```ts
import * as Layer from "effect/Layer"
// Can be accessed like this
Layer.flatten
```

**Signature**

```ts
export declare const flatten: {
  <R2, E2, A, I>(tag: Context.Tag<I, Layer<A, E2, R2>>): <R, E>(self: Layer<I, E, R>) => Layer<A, E2 | E, R2 | R>
  <R, E, A, R2, E2, I>(self: Layer<I, E, R>, tag: Context.Tag<I, Layer<A, E2, R2>>): Layer<A, E | E2, R | R2>
}
```
