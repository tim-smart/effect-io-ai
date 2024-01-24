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
  <E, R2, E2, _>(
    f: (error: NoInfer<E>) => Effect.Effect<R2, E2, _>
  ): <R, A>(self: Stream<R, E, A>) => Stream<R2 | R, E | E2, A>
  <R, A, E, R2, E2, _>(self: Stream<R, E, A>, f: (error: E) => Effect.Effect<R2, E2, _>): Stream<R | R2, E | E2, A>
}
```
