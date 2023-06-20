# orElseSucceed

Succeeds with the specified value if this one fails with a typed error.

To import and use `orElseSucceed` from the "Stream" module:

```ts
import * as Stream from '@effect/stream/Stream'

// Can be accessed like this
Stream.orElseSucceed
```

**Signature**

```ts
export declare const orElseSucceed: {
  <A2>(value: LazyArg<A2>): <R, E, A>(self: Stream<R, E, A>) => Stream<R, never, A2 | A>
  <R, E, A, A2>(self: Stream<R, E, A>, value: LazyArg<A2>): Stream<R, never, A | A2>
}
```
