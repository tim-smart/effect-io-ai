# mapAccum

Statefully maps over the chunk, producing new elements of type `B`.

To import and use `mapAccum` from the "Array" module:

```ts
import * as Array from "effect/Array"
// Can be accessed like this
Array.mapAccum
```

**Signature**

```ts
export declare const mapAccum: {
  <S, A, B>(s: S, f: (s: S, a: A, i: number) => readonly [S, B]): (self: Iterable<A>) => [state: S, mappedArray: B[]]
  <S, A, B>(self: Iterable<A>, s: S, f: (s: S, a: A, i: number) => readonly [S, B]): [state: S, mappedArray: B[]]
}
```
