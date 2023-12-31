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
  <S, A, A2>(s: S, f: (s: S, a: A) => readonly [S, A2]): <R, E>(self: Stream<R, E, A>) => Stream<R, E, A2>
  <R, E, S, A, A2>(self: Stream<R, E, A>, s: S, f: (s: S, a: A) => readonly [S, A2]): Stream<R, E, A2>
}
```
