# split

Splits this chunk into `n` equally sized chunks.

To import and use `split` from the "Chunk" module:

```ts
import * as Chunk from "effect/Chunk"
// Can be accessed like this
Chunk.split
```

**Signature**

```ts
export declare const split: {
  (n: number): <A>(self: Chunk<A>) => Chunk<Chunk<A>>
  <A>(self: Chunk<A>, n: number): Chunk<Chunk<A>>
}
```
