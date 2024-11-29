# provideLayer

Provides a `Layer` to the stream, which translates it to another level.

To import and use `provideLayer` from the "Stream" module:

ts
import \* as Stream from "effect/Stream"
// Can be accessed like this
Stream.provideLayer
undefined

**Signature**

```ts
export declare const provideLayer: {
  <RIn, E2, ROut>(layer: Layer.Layer<ROut, E2, RIn>): <A, E>(self: Stream<A, E, ROut>) => Stream<A, E2 | E, RIn>
  <A, E, RIn, E2, ROut>(self: Stream<A, E, ROut>, layer: Layer.Layer<ROut, E2, RIn>): Stream<A, E | E2, RIn>
}
```
