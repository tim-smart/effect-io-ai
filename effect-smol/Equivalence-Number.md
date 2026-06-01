Package: `effect`<br />
Module: `Equivalence`<br />

## Equivalence.Number

Equivalence instance for numbers.

**When to use**

Use when you need numeric equality that treats NaN as equal to itself.

**Example** (Comparing numbers)

```ts
import { Equivalence } from "effect"

console.log(Equivalence.Number(1, 1)) // true
console.log(Equivalence.Number(1, 2)) // false
console.log(Equivalence.Number(NaN, NaN)) // true
```

**Signature**

```ts
declare const Number: Equivalence<number>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Equivalence.ts#L284)

Since v4.0.0