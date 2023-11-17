# mergeEither

Merges this stream and the specified stream together to produce a stream of
eithers.

To import and use `mergeEither` from the "Stream" module:

```ts
import * as Stream from "effect/Stream"
// Can be accessed like this
Stream.mergeEither
```

**Signature**

```ts
export declare const mergeEither: {
  <R2, E2, A2>(
    that: Stream<R2, E2, A2>
  ): <R, E, A>(self: Stream<R, E, A>) => Stream<R2 | R, E2 | E, Either.Either<A, A2>>
  <R, E, A, R2, E2, A2>(self: Stream<R, E, A>, that: Stream<R2, E2, A2>): Stream<R | R2, E | E2, Either.Either<A, A2>>
}
```
