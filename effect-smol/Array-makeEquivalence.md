Package: `effect`<br />
Module: `Array`<br />

## Array.makeEquivalence

Creates an `Equivalence` for arrays based on an element `Equivalence`. Two
arrays are equivalent when they have the same length and all elements are
pairwise equivalent.

**Example** (Comparing arrays for equality)

```ts
import { Array } from "effect"

const eq = Array.makeEquivalence<number>((a, b) => a === b)
console.log(eq([1, 2, 3], [1, 2, 3])) // true
```

**See**

- `makeOrder` — create an ordering for arrays

**Signature**

```ts
declare const makeEquivalence: <A>(isEquivalent: Equivalence.Equivalence<A>) => Equivalence.Equivalence<ReadonlyArray<A>>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Array.ts#L3814)

Since v2.0.0