# mapConcat

Maps each element to an iterable, and flattens the iterables into the
output of this stream.

To import and use `mapConcat` from the "Stream" module:

```ts
import * as Stream from "effect/Stream"
// Can be accessed like this
Stream.mapConcat
```

**Signature**

```ts
export declare const mapConcat: {
  <A, A2>(f: (a: A) => Iterable<A2>): <E, R>(self: Stream<A, E, R>) => Stream<A2, E, R>
  <A, E, R, A2>(self: Stream<A, E, R>, f: (a: A) => Iterable<A2>): Stream<A2, E, R>
}
```
