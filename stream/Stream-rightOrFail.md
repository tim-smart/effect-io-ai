# rightOrFail

Fails with given error 'e' if value is `Left`.

To import and use `rightOrFail` from the "Stream" module:

```ts
import * as Stream from '@effect/stream/Stream'

// Can be accessed like this
Stream.rightOrFail
```

**Signature**

```ts
export declare const rightOrFail: {
  <E2>(error: LazyArg<E2>): <R, E, A, A2>(self: Stream<R, E, Either.Either<A, A2>>) => Stream<R, E2 | E, A2>
  <R, E, A, A2, E2>(self: Stream<R, E, Either.Either<A, A2>>, error: LazyArg<E2>): Stream<R, E | E2, A2>
}
```
