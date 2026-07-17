Package: `effect`<br />
Module: `Chunk`<br />

## Chunk.makeEquivalence

Creates an `Equivalence` for chunks that compares chunk lengths and then
compares corresponding elements with the provided element equivalence.

**Example** (Comparing chunks for equivalence)

```ts
import { Chunk, Equivalence } from "effect"

const chunk1 = Chunk.make(1, 2, 3)
const chunk2 = Chunk.make(1, 2, 3)
const chunk3 = Chunk.make(1, 2, 4)

const eq = Chunk.makeEquivalence(Equivalence.strictEqual<number>())
console.log(eq(chunk1, chunk2)) // true
console.log(eq(chunk1, chunk3)) // false
```

**Signature**

```ts
declare const makeEquivalence: <A>(isEquivalent: Equivalence.Equivalence<A>) => Equivalence.Equivalence<Chunk<A>>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Chunk.ts#L170)

Since v4.0.0