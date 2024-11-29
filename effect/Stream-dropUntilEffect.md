# dropUntilEffect

Drops all elements of the stream until the specified effectful predicate
evaluates to `true`.

To import and use `dropUntilEffect` from the "Stream" module:

ts
import \* as Stream from "effect/Stream"
// Can be accessed like this
Stream.dropUntilEffect
undefined

**Signature**

```ts
export declare const dropUntilEffect: {
  <A, E2, R2>(
    predicate: (a: NoInfer<A>) => Effect.Effect<boolean, E2, R2>
  ): <E, R>(self: Stream<A, E, R>) => Stream<A, E2 | E, R2 | R>
  <A, E, R, E2, R2>(
    self: Stream<A, E, R>,
    predicate: (a: NoInfer<A>) => Effect.Effect<boolean, E2, R2>
  ): Stream<A, E | E2, R | R2>
}
```
