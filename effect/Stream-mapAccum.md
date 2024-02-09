# mapAccum

Statefully maps over the elements of this stream to produce new elements.

To import and use `mapAccum` from the "Stream" module:

```ts
import * as Stream from "effect/Stream"
// Can be accessed like this
Stream.mapAccum
```

**Signature**

```ts
export declare const mapAccum: {
  <S, A, A2>(s: S, f: (s: S, a: A) => readonly [S, A2]): <R, E>(self: Stream<A, E, R>) => Stream<A2, E, R>
  <R, E, S, A, A2>(self: Stream<A, E, R>, s: S, f: (s: S, a: A) => readonly [S, A2]): Stream<A2, E, R>
}
```
