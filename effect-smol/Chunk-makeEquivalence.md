Package: `effect`<br />
Module: `Chunk`<br />

## Chunk.makeEquivalence

Compares the two chunks of equal length using the specified function

**Example**

```ts
import { Chunk } from "effect"
import * as Equivalence from "effect/Equivalence"

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

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Chunk.ts#L227)

Since v2.0.0