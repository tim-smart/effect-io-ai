# flattenEffect

Flattens `Effect` values into the stream's structure, preserving all
information about the effect.

To import and use `flattenEffect` from the "Stream" module:

```ts
import * as Stream from '@effect/stream/Stream'

// Can be accessed like this
Stream.flattenEffect
```

**Signature**

```ts
export declare const flattenEffect: <R, E, R2, E2, A>(
  self: Stream<R, E, Effect.Effect<R2, E2, A>>
) => Stream<R | R2, E | E2, A>
```
