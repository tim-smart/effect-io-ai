# scan

Statefully maps over the elements of this stream to produce all
intermediate results of type `S` given an initial S.

Part of the `Stream` module, imported from `@effect/stream/Stream`.

**Signature**

```ts
export declare const scan: {
  <S, A>(s: S, f: (s: S, a: A) => S): <R, E>(self: Stream<R, E, A>) => Stream<R, E, S>
  <R, E, S, A>(self: Stream<R, E, A>, s: S, f: (s: S, a: A) => S): Stream<R, E, S>
}
```
