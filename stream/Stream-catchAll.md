# catchAll

Switches over to the stream produced by the provided function in case this
one fails with a typed error.

To import and use `catchAll` from the "Stream" module:

```ts
import * as Stream from '@effect/stream/Stream'

// Can be accessed like this
Stream.catchAll
```

**Signature**

```ts
export declare const catchAll: {
  <E, R2, E2, A2>(f: (error: E) => Stream<R2, E2, A2>): <R, A>(self: Stream<R, E, A>) => Stream<R2 | R, E2, A2 | A>
  <R, A, E, R2, E2, A2>(self: Stream<R, E, A>, f: (error: E) => Stream<R2, E2, A2>): Stream<R | R2, E2, A | A2>
}
```
