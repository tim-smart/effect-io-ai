# provideSomeLayer

Splits the context into two parts, providing one part using the
specified layer and leaving the remainder `R0`.

To import and use `provideSomeLayer` from the "Stream" module:

```ts
import * as Stream from "effect/Stream"
// Can be accessed like this
Stream.provideSomeLayer
```

**Signature**

```ts
export declare const provideSomeLayer: {
  <RIn, E2, ROut>(
    layer: Layer.Layer<ROut, E2, RIn>
  ): <A, E, R>(self: Stream<A, E, R>) => Stream<A, E2 | E, RIn | Exclude<R, ROut>>
  <A, E, R, RIn, E2, ROut>(
    self: Stream<A, E, R>,
    layer: Layer.Layer<ROut, E2, RIn>
  ): Stream<A, E | E2, RIn | Exclude<R, ROut>>
}
```
