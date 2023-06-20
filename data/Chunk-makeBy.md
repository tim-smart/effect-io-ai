# makeBy

Return a Chunk of length n with element i initialized with f(i).

**Note**. `n` is normalized to an integer >= 1.

To import and use `makeBy` from the "Chunk" module:

```ts
import * as Chunk from '@effect/data/Chunk'

// Can be accessed like this
Chunk.makeBy
```

**Signature**

```ts
export declare const makeBy: {
  <A>(f: (i: number) => A): (n: number) => NonEmptyChunk<A>
  <A>(n: number, f: (i: number) => A): NonEmptyChunk<A>
}
```
