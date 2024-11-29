# orElseSucceed

Succeeds with the specified value if this one fails with a typed error.

To import and use `orElseSucceed` from the "Stream" module:

ts
import \* as Stream from "effect/Stream"
// Can be accessed like this
Stream.orElseSucceed
undefined

**Signature**

```ts
export declare const orElseSucceed: {
  <A2>(value: LazyArg<A2>): <A, E, R>(self: Stream<A, E, R>) => Stream<A2 | A, never, R>
  <A, E, R, A2>(self: Stream<A, E, R>, value: LazyArg<A2>): Stream<A | A2, never, R>
}
```
