# catchSome

Switches over to the stream produced by the provided function in case this
one fails with some typed error.

To import and use `catchSome` from the "Stream" module:

```ts
import * as Stream from "effect/Stream"
// Can be accessed like this
Stream.catchSome
```

**Signature**

```ts
export declare const catchSome: {
  <E, R2, E2, A2>(
    pf: (error: E) => Option.Option<Stream<R2, E2, A2>>
  ): <R, A>(self: Stream<R, E, A>) => Stream<R2 | R, E | E2, A2 | A>
  <R, A, E, R2, E2, A2>(
    self: Stream<R, E, A>,
    pf: (error: E) => Option.Option<Stream<R2, E2, A2>>
  ): Stream<R | R2, E | E2, A | A2>
}
```
