# scan

Statefully maps over the elements of this stream to produce all
intermediate results of type `S` given an initial S.

To import and use `scan` from the "Stream" module:

```ts
import * as Stream from '@effect/stream/Stream'

// Can be accessed like this
Stream.scan
```

**Signature**

```ts
export declare const scan: {
  <S, A>(s: S, f: (s: S, a: A) => S): <R, E>(self: Stream<R, E, A>) => Stream<R, E, S>
  <R, E, S, A>(self: Stream<R, E, A>, s: S, f: (s: S, a: A) => S): Stream<R, E, S>
}
```
