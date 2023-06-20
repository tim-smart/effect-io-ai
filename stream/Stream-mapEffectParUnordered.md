# mapEffectParUnordered

Maps over elements of the stream with the specified effectful function,
executing up to `n` invocations of `f` concurrently. The element order is
not enforced by this combinator, and elements may be reordered.

To import and use `mapEffectParUnordered` from the "Stream" module:

```ts
import * as Stream from '@effect/stream/Stream'

// Can be accessed like this
Stream.mapEffectParUnordered
```

**Signature**

```ts
export declare const mapEffectParUnordered: {
  <A, R2, E2, A2>(n: number, f: (a: A) => Effect.Effect<R2, E2, A2>): <R, E>(
    self: Stream<R, E, A>
  ) => Stream<R2 | R, E2 | E, A2>
  <R, E, A, R2, E2, A2>(self: Stream<R, E, A>, n: number, f: (a: A) => Effect.Effect<R2, E2, A2>): Stream<
    R | R2,
    E | E2,
    A2
  >
}
```
