# splitAt

Returns two splits of this chunk at the specified index.

To import and use `splitAt` from the "Chunk" module:

```ts
import * as Chunk from '@effect/data/Chunk'

// Can be accessed like this
Chunk.splitAt
```

**Signature**

```ts
export declare const splitAt: {
  (n: number): <A>(self: Chunk<A>) => [Chunk<A>, Chunk<A>]
  <A>(self: Chunk<A>, n: number): [Chunk<A>, Chunk<A>]
}
```
