# provideLayer

Provides a `Layer` to the stream, which translates it to another level.

To import and use `provideLayer` from the "Stream" module:

```ts
import * as Stream from 'effect/Stream'

// Can be accessed like this
Stream.provideLayer
```

**Signature**

```ts
export declare const provideLayer: {
  <RIn, E2, ROut>(layer: Layer.Layer<RIn, E2, ROut>): <E, A>(self: Stream<ROut, E, A>) => Stream<RIn, E2 | E, A>
  <E, A, RIn, E2, ROut>(self: Stream<ROut, E, A>, layer: Layer.Layer<RIn, E2, ROut>): Stream<RIn, E | E2, A>
}
```
