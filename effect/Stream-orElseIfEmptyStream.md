# orElseIfEmptyStream

Switches to the provided stream in case this one is empty.

To import and use `orElseIfEmptyStream` from the "Stream" module:

```ts
import * as Stream from "effect/Stream"
// Can be accessed like this
Stream.orElseIfEmptyStream
```

**Signature**

```ts
export declare const orElseIfEmptyStream: {
  <R2, E2, A2>(stream: LazyArg<Stream<A2, E2, R2>>): <A, E, R>(self: Stream<A, E, R>) => Stream<A2 | A, E2 | E, R2 | R>
  <R, E, A, R2, E2, A2>(self: Stream<A, E, R>, stream: LazyArg<Stream<A2, E2, R2>>): Stream<A | A2, E | E2, R | R2>
}
```
