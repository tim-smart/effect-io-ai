# takeUntilEffect

Takes all elements of the stream until the specified effectual predicate
evaluates to `true`.

To import and use `takeUntilEffect` from the "Stream" module:

```ts
import * as Stream from '@effect/stream/Stream'

// Can be accessed like this
Stream.takeUntilEffect
```

**Signature**

```ts
export declare const takeUntilEffect: {
  <A, R2, E2>(predicate: (a: A) => Effect.Effect<R2, E2, boolean>): <R, E>(
    self: Stream<R, E, A>
  ) => Stream<R2 | R, E2 | E, A>
  <R, E, A, R2, E2>(self: Stream<R, E, A>, predicate: (a: A) => Effect.Effect<R2, E2, boolean>): Stream<
    R | R2,
    E | E2,
    A
  >
}
```
