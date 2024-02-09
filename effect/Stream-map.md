# map

Transforms the elements of this stream using the supplied function.

To import and use `map` from the "Stream" module:

```ts
import * as Stream from "effect/Stream"
// Can be accessed like this
Stream.map
```

**Signature**

```ts
export declare const map: {
  <A, B>(f: (a: A) => B): <R, E>(self: Stream<A, E, R>) => Stream<B, E, R>
  <R, E, A, B>(self: Stream<A, E, R>, f: (a: A) => B): Stream<B, E, R>
}
```
