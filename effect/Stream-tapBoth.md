# tapBoth

Returns a stream that effectfully "peeks" at the failure or success of
the stream.

To import and use `tapBoth` from the "Stream" module:

```ts
import * as Stream from "effect/Stream"
// Can be accessed like this
Stream.tapBoth
```

**Signature**

```ts
export declare const tapBoth: {
  <E, R2, E2, X1, A, R3, E3, X2>(options: {
    readonly onFailure: (e: NoInfer<E>) => Effect.Effect<X1, E2, R2>
    readonly onSuccess: (a: NoInfer<A>) => Effect.Effect<X2, E3, R3>
  }): <R>(self: Stream<A, E, R>) => Stream<A, E | E2 | E3, R2 | R3 | R>
  <R, E, A, R2, E2, X1, R3, E3, X2>(
    self: Stream<A, E, R>,
    options: {
      readonly onFailure: (e: NoInfer<E>) => Effect.Effect<X1, E2, R2>
      readonly onSuccess: (a: NoInfer<A>) => Effect.Effect<X2, E3, R3>
    }
  ): Stream<A, E | E2 | E3, R | R2 | R3>
}
```
