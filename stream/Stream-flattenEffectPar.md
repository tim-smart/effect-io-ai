# flattenEffectPar

Flattens `Effect` values into the stream's structure, preserving all
information about the effect.

To import and use `flattenEffectPar` from the "Stream" module:

```ts
import * as Stream from '@effect/stream/Stream'

// Can be accessed like this
Stream.flattenEffectPar
```

**Signature**

```ts
export declare const flattenEffectPar: {
  (n: number): <R, E, E2, R2, A>(self: Stream<R, E, Effect.Effect<R2, E2, A>>) => Stream<R | R2, E | E2, A>
  <R, E, A, R2, E2>(self: Stream<R, E, Effect.Effect<R2, E2, A>>, n: number): Stream<R | R2, E | E2, A>
}
```
