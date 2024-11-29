# catchAll

Switches over to the stream produced by the provided function in case this
one fails with a typed error.

To import and use `catchAll` from the "Stream" module:

ts
import \* as Stream from "effect/Stream"
// Can be accessed like this
Stream.catchAll
undefined

**Signature**

```ts
export declare const catchAll: {
  <E, A2, E2, R2>(f: (error: E) => Stream<A2, E2, R2>): <A, R>(self: Stream<A, E, R>) => Stream<A2 | A, E2, R2 | R>
  <A, E, R, A2, E2, R2>(self: Stream<A, E, R>, f: (error: E) => Stream<A2, E2, R2>): Stream<A | A2, E2, R | R2>
}
```
