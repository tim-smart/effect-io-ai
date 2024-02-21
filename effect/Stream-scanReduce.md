# scanReduce

Statefully maps over the elements of this stream to produce all
intermediate results.

See also `Stream.scan`.

To import and use `scanReduce` from the "Stream" module:

```ts
import * as Stream from "effect/Stream"
// Can be accessed like this
Stream.scanReduce
```

**Signature**

```ts
export declare const scanReduce: {
  <A2, A>(f: (a2: A2 | A, a: A) => A2): <E, R>(self: Stream<A, E, R>) => Stream<A2 | A, E, R>
  <A, E, R, A2>(self: Stream<A, E, R>, f: (a2: A | A2, a: A) => A2): Stream<A | A2, E, R>
}
```
