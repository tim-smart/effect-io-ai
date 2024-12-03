# dropRight

Drops the last `n` elements.

To import and use `dropRight` from the "Chunk" module:

```ts
import * as Chunk from "effect/Chunk"
// Can be accessed like this
Chunk.dropRight
```

**Signature**

```ts
export declare const dropRight: {
  (n: number): <A>(self: Chunk<A>) => Chunk<A>
  <A>(self: Chunk<A>, n: number): Chunk<A>
}
```
