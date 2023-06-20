# orElseIfEmptyStream

Switches to the provided stream in case this one is empty.

To import and use `orElseIfEmptyStream` from the "Stream" module:

```ts
import * as Stream from '@effect/stream/Stream'

// Can be accessed like this
Stream.orElseIfEmptyStream
```

**Signature**

```ts
export declare const orElseIfEmptyStream: {
  <R2, E2, A2>(stream: LazyArg<Stream<R2, E2, A2>>): <R, E, A>(self: Stream<R, E, A>) => Stream<R2 | R, E2 | E, A2 | A>
  <R, E, A, R2, E2, A2>(self: Stream<R, E, A>, stream: LazyArg<Stream<R2, E2, A2>>): Stream<R | R2, E | E2, A | A2>
}
```
