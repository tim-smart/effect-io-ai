# mergeEither

Merges this stream and the specified stream together to produce a stream of
eithers.

To import and use `mergeEither` from the "Stream" module:

ts
import \* as Stream from "effect/Stream"
// Can be accessed like this
Stream.mergeEither
undefined

**Signature**

```ts
export declare const mergeEither: {
  <A2, E2, R2>(
    that: Stream<A2, E2, R2>
  ): <A, E, R>(self: Stream<A, E, R>) => Stream<Either.Either<A2, A>, E2 | E, R2 | R>
  <A, E, R, A2, E2, R2>(self: Stream<A, E, R>, that: Stream<A2, E2, R2>): Stream<Either.Either<A2, A>, E | E2, R | R2>
}
```
