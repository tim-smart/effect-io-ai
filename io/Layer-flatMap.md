# flatMap

Constructs a layer dynamically based on the output of this layer.

To import and use `flatMap` from the "Layer" module:

```ts
import * as Layer from '@effect/io/Layer'

// Can be accessed like this
Layer.flatMap
```

**Signature**

```ts
export declare const flatMap: {
  <A, R2, E2, A2>(f: (context: Context.Context<A>) => Layer<R2, E2, A2>): <R, E>(
    self: Layer<R, E, A>
  ) => Layer<R2 | R, E2 | E, A2>
  <R, E, A, R2, E2, A2>(self: Layer<R, E, A>, f: (context: Context.Context<A>) => Layer<R2, E2, A2>): Layer<
    R | R2,
    E | E2,
    A2
  >
}
```
