# difference

Creates a `Chunk` of values not included in the other given `Chunk`.
The order and references of result values are determined by the first `Chunk`.

To import and use `difference` from the "Chunk" module:

```ts
import * as Chunk from "effect/Chunk"
// Can be accessed like this
Chunk.difference
```

**Signature**

```ts
export declare const difference: {
  <A>(that: Chunk<A>): (self: Chunk<A>) => Chunk<A>
  <A>(self: Chunk<A>, that: Chunk<A>): Chunk<A>
}
```
