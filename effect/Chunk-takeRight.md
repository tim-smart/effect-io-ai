# takeRight

Takes the last `n` elements.

To import and use `takeRight` from the "Chunk" module:

```ts
import * as Chunk from "effect/Chunk"
// Can be accessed like this
Chunk.takeRight
```

**Signature**

```ts
export declare const takeRight: {
  (n: number): <A>(self: Chunk<A>) => Chunk<A>
  <A>(self: Chunk<A>, n: number): Chunk<A>
}
```
