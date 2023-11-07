# tapBoth

Returns a stream that effectfully "peeks" at the failure or success of
the stream.

To import and use `tapBoth` from the "Stream" module:

```ts
import * as Stream from 'effect/Stream'

// Can be accessed like this
Stream.tapBoth
```

**Signature**

```ts
export declare const tapBoth: {
  <E, XE extends E, A, XA extends A, R2, E2, X, R3, E3, X1>(options: {
    readonly onFailure: (e: XE) => Effect.Effect<R2, E2, X>
    readonly onSuccess: (a: XA) => Effect.Effect<R3, E3, X1>
  }): <R>(self: Stream<R, E, A>) => Stream<R2 | R3 | R, E | E2 | E3, A>
  <R, E, A, XE extends E, XA extends A, R2, E2, X, R3, E3, X1>(
    self: Stream<R, E, A>,
    options: {
      readonly onFailure: (e: XE) => Effect.Effect<R2, E2, X>
      readonly onSuccess: (a: XA) => Effect.Effect<R3, E3, X1>
    }
  ): Stream<R | R2 | R3, E | E2 | E3, A>
}
```
