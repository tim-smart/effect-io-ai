# flatMap

Constructs a layer dynamically based on the output of this layer.

To import and use `flatMap` from the "Layer" module:

```ts
import * as Layer from "effect/Layer"
// Can be accessed like this
Layer.flatMap
```

**Signature**

```ts
export declare const flatMap: {
  <A, R2, E2, A2>(
    f: (context: Context.Context<A>) => Layer<A2, E2, R2>
  ): <R, E>(self: Layer<A, E, R>) => Layer<A2, E2 | E, R2 | R>
  <R, E, A, R2, E2, A2>(
    self: Layer<A, E, R>,
    f: (context: Context.Context<A>) => Layer<A2, E2, R2>
  ): Layer<A2, E | E2, R | R2>
}
```
