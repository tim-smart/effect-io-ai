# catchAll

Switches over to the stream produced by the provided function in case this
one fails with a typed error.

To import and use `catchAll` from the "Stream" module:

```ts
import * as Stream from "effect/Stream"
// Can be accessed like this
Stream.catchAll
```

**Signature**

```ts
export declare const catchAll: {
  <E, R2, E2, A2>(f: (error: E) => Stream<A2, E2, R2>): <R, A>(self: Stream<A, E, R>) => Stream<A2 | A, E2, R2 | R>
  <R, A, E, R2, E2, A2>(self: Stream<A, E, R>, f: (error: E) => Stream<A2, E2, R2>): Stream<A | A2, E2, R | R2>
}
```
