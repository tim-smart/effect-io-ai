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
  <A2, A>(f: (a2: A2 | A, a: A) => A2): <R, E>(self: Stream<A, E, R>) => Stream<A2 | A, E, R>
  <R, E, A2, A>(self: Stream<A, E, R>, f: (a2: A2 | A, a: A) => A2): Stream<A2 | A, E, R>
}
```
