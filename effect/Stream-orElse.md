# orElse

Switches to the provided stream in case this one fails with a typed error.

See also `Stream.catchAll`.

To import and use `orElse` from the "Stream" module:

ts
import \* as Stream from "effect/Stream"
// Can be accessed like this
Stream.orElse
undefined

**Signature**

```ts
export declare const orElse: {
  <A2, E2, R2>(that: LazyArg<Stream<A2, E2, R2>>): <A, E, R>(self: Stream<A, E, R>) => Stream<A2 | A, E2, R2 | R>
  <A, E, R, A2, E2, R2>(self: Stream<A, E, R>, that: LazyArg<Stream<A2, E2, R2>>): Stream<A | A2, E2, R | R2>
}
```
