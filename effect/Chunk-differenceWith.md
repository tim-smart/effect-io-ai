# differenceWith

Creates a `Chunk` of values not included in the other given `Chunk` using the provided `isEquivalent` function.
The order and references of result values are determined by the first `Chunk`.

To import and use `differenceWith` from the "Chunk" module:

```ts
import * as Chunk from "effect/Chunk"
// Can be accessed like this
Chunk.differenceWith
```

**Signature**

```ts
export declare const differenceWith: <A>(isEquivalent: (self: A, that: A) => boolean) => {
  (that: Chunk<A>): (self: Chunk<A>) => Chunk<A>
  (self: Chunk<A>, that: Chunk<A>): Chunk<A>
}
```
