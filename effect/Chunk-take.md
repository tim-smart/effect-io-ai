# take

Takes the first up to `n` elements from the chunk

To import and use `take` from the "Chunk" module:

```ts
import * as Chunk from 'effect/Chunk'

// Can be accessed like this
Chunk.take
```

**Signature**

```ts
export declare const take: { (n: number): <A>(self: Chunk<A>) => Chunk<A>; <A>(self: Chunk<A>, n: number): Chunk<A> }
```
