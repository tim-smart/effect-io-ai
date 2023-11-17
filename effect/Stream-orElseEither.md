# orElseEither

Switches to the provided stream in case this one fails with a typed error.

See also `Stream.catchAll`.

To import and use `orElseEither` from the "Stream" module:

```ts
import * as Stream from "effect/Stream"
// Can be accessed like this
Stream.orElseEither
```

**Signature**

```ts
export declare const orElseEither: {
  <R2, E2, A2>(
    that: LazyArg<Stream<R2, E2, A2>>
  ): <R, E, A>(self: Stream<R, E, A>) => Stream<R2 | R, E2, Either.Either<A, A2>>
  <R, E, A, R2, E2, A2>(
    self: Stream<R, E, A>,
    that: LazyArg<Stream<R2, E2, A2>>
  ): Stream<R | R2, E2, Either.Either<A, A2>>
}
```
