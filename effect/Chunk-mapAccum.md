# mapAccum

Statefully maps over the chunk, producing new elements of type `B`.

To import and use `mapAccum` from the "Chunk" module:

```ts
import * as Chunk from "effect/Chunk"
// Can be accessed like this
Chunk.mapAccum
```

**Signature**

```ts
export declare const mapAccum: {
  <S, A, B>(s: S, f: (s: S, a: A) => readonly [S, B]): (self: Chunk<A>) => [S, Chunk<B>]
  <S, A, B>(self: Chunk<A>, s: S, f: (s: S, a: A) => readonly [S, B]): [S, Chunk<B>]
}
```
