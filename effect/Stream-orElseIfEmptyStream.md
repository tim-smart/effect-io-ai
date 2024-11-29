# orElseIfEmptyStream

Switches to the provided stream in case this one is empty.

To import and use `orElseIfEmptyStream` from the "Stream" module:

ts
import \* as Stream from "effect/Stream"
// Can be accessed like this
Stream.orElseIfEmptyStream
undefined

**Signature**

```ts
export declare const orElseIfEmptyStream: {
  <A2, E2, R2>(stream: LazyArg<Stream<A2, E2, R2>>): <A, E, R>(self: Stream<A, E, R>) => Stream<A2 | A, E2 | E, R2 | R>
  <A, E, R, A2, E2, R2>(self: Stream<A, E, R>, stream: LazyArg<Stream<A2, E2, R2>>): Stream<A | A2, E | E2, R | R2>
}
```
