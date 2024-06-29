# scan

Statefully maps over the elements of this stream to produce all
intermediate results of type `S` given an initial S.

To import and use `scan` from the "Stream" module:

```ts
import * as Stream from "effect/Stream"
// Can be accessed like this
Stream.scan
```

**Signature**

```ts
export declare const scan: {
  <S, A>(s: S, f: (s: S, a: A) => S): <E, R>(self: Stream<A, E, R>) => Stream<S, E, R>
  <A, E, R, S>(self: Stream<A, E, R>, s: S, f: (s: S, a: A) => S): Stream<S, E, R>
}
```
