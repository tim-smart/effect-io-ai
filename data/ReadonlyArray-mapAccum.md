# mapAccum

Statefully maps over the chunk, producing new elements of type `B`.

To import and use `mapAccum` from the "ReadonlyArray" module:

```ts
import * as ReadonlyArray from '@effect/data/ReadonlyArray'

// Can be accessed like this
ReadonlyArray.mapAccum
```

**Signature**

```ts
export declare const mapAccum: {
  <S, A, B>(s: S, f: (s: S, a: A) => readonly [S, B]): (self: Iterable<A>) => [S, B[]]
  <S, A, B>(self: Iterable<A>, s: S, f: (s: S, a: A) => readonly [S, B]): [S, B[]]
}
```
