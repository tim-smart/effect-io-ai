# orElseFail

Fails with given error in case this one fails with a typed error.

See also `Stream.catchAll`.

To import and use `orElseFail` from the "Stream" module:

```ts
import * as Stream from "effect/Stream"
// Can be accessed like this
Stream.orElseFail
```

**Signature**

```ts
export declare const orElseFail: {
  <E2>(error: LazyArg<E2>): <A, E, R>(self: Stream<A, E, R>) => Stream<A, E2, R>
  <A, E, R, E2>(self: Stream<A, E, R>, error: LazyArg<E2>): Stream<A, E2, R>
}
```
