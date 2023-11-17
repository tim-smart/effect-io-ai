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
  <R2, E2, A, I>(tag: Context.Tag<I, Layer<R2, E2, A>>): <R, E>(self: Layer<R, E, I>) => Layer<R2 | R, E2 | E, A>
  <R, E, A, R2, E2, I>(self: Layer<R, E, I>, tag: Context.Tag<I, Layer<R2, E2, A>>): Layer<R | R2, E | E2, A>
}
```
