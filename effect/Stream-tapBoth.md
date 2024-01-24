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
    readonly onFailure: (e: NoInfer<E>) => Effect.Effect<R2, E2, X1>
    readonly onSuccess: (a: NoInfer<A>) => Effect.Effect<R3, E3, X2>
  }): <R>(self: Stream<R, E, A>) => Stream<R2 | R3 | R, E | E2 | E3, A>
  <R, E, A, R2, E2, X1, R3, E3, X2>(
    self: Stream<R, E, A>,
    options: {
      readonly onFailure: (e: NoInfer<E>) => Effect.Effect<R2, E2, X1>
      readonly onSuccess: (a: NoInfer<A>) => Effect.Effect<R3, E3, X2>
    }
  ): Stream<R | R2 | R3, E | E2 | E3, A>
}
```
