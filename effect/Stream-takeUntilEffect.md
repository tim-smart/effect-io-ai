# takeUntilEffect

Takes all elements of the stream until the specified effectual predicate
evaluates to `true`.

To import and use `takeUntilEffect` from the "Stream" module:

```ts
import * as Stream from "effect/Stream"
// Can be accessed like this
Stream.takeUntilEffect
```

**Signature**

```ts
export declare const takeUntilEffect: {
  <A, R2, E2>(
    predicate: (a: NoInfer<A>) => Effect.Effect<boolean, E2, R2>
  ): <R, E>(self: Stream<A, E, R>) => Stream<A, E2 | E, R2 | R>
  <R, E, A, R2, E2>(
    self: Stream<A, E, R>,
    predicate: (a: A) => Effect.Effect<boolean, E2, R2>
  ): Stream<A, E | E2, R | R2>
}
```
