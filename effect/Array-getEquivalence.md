Package: `effect`<br />
Module: `Array`<br />

## Array.getEquivalence

Creates an equivalence relation for arrays.

**Example**

```ts
import { Array } from "effect"

const eq = Array.getEquivalence<number>((a, b) => a === b)
console.log(eq([1, 2, 3], [1, 2, 3])) // true
```

**Signature**

```ts
declare const getEquivalence: <A>(isEquivalent: Equivalence.Equivalence<A>) => Equivalence.Equivalence<ReadonlyArray<A>>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Array.ts#L2970)

Since v2.0.0