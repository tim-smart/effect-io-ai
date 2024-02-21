# orElseIfEmpty

Produces the specified element if this stream is empty.

To import and use `orElseIfEmpty` from the "Stream" module:

```ts
import * as Stream from "effect/Stream"
// Can be accessed like this
Stream.orElseIfEmpty
```

**Signature**

```ts
export declare const orElseIfEmpty: {
  <A2>(element: LazyArg<A2>): <A, E, R>(self: Stream<A, E, R>) => Stream<A2 | A, E, R>
  <A, E, R, A2>(self: Stream<A, E, R>, element: LazyArg<A2>): Stream<A | A2, E, R>
}
```
