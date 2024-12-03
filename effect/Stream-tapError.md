# tapError

Returns a stream that effectfully "peeks" at the failure of the stream.

To import and use `tapError` from the "Stream" module:

```ts
import * as Stream from "effect/Stream"
// Can be accessed like this
Stream.tapError
```

**Signature**

```ts
export declare const tapError: {
  <E, X, E2, R2>(
    f: (error: NoInfer<E>) => Effect.Effect<X, E2, R2>
  ): <A, R>(self: Stream<A, E, R>) => Stream<A, E | E2, R2 | R>
  <A, E, R, X, E2, R2>(self: Stream<A, E, R>, f: (error: E) => Effect.Effect<X, E2, R2>): Stream<A, E | E2, R | R2>
}
```
