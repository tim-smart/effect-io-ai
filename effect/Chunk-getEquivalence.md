# getEquivalence

Compares the two chunks of equal length using the specified function

To import and use `getEquivalence` from the "Chunk" module:

ts
import \* as Chunk from "effect/Chunk"
// Can be accessed like this
Chunk.getEquivalence
undefined

**Signature**

```ts
export declare const getEquivalence: <A>(isEquivalent: Equivalence.Equivalence<A>) => Equivalence.Equivalence<Chunk<A>>
```
