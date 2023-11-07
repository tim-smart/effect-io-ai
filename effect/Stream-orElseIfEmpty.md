# orElseIfEmpty

Produces the specified element if this stream is empty.

To import and use `orElseIfEmpty` from the "Stream" module:

```ts
import * as Stream from 'effect/Stream'

// Can be accessed like this
Stream.orElseIfEmpty
```

**Signature**

```ts
export declare const orElseIfEmpty: {
  <A2>(element: LazyArg<A2>): <R, E, A>(self: Stream<R, E, A>) => Stream<R, E, A2 | A>
  <R, E, A, A2>(self: Stream<R, E, A>, element: LazyArg<A2>): Stream<R, E, A | A2>
}
```
