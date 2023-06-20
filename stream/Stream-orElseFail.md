# orElseFail

Fails with given error in case this one fails with a typed error.

See also `Stream.catchAll`.

To import and use `orElseFail` from the "Stream" module:

```ts
import * as Stream from '@effect/stream/Stream'

// Can be accessed like this
Stream.orElseFail
```

**Signature**

```ts
export declare const orElseFail: {
  <E2>(error: LazyArg<E2>): <R, E, A>(self: Stream<R, E, A>) => Stream<R, E2, A>
  <R, E, A, E2>(self: Stream<R, E, A>, error: LazyArg<E2>): Stream<R, E2, A>
}
```
