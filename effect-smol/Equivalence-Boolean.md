Package: `effect`<br />
Module: `Equivalence`<br />

## Equivalence.Boolean

Equivalence instance for booleans using strict equality (`===`).

**When to use**

Use when you need to supply boolean equality.

**Example** (Comparing booleans)

```ts
import { Equivalence } from "effect"

console.log(Equivalence.Boolean(true, true)) // true
console.log(Equivalence.Boolean(true, false)) // false
```

**Signature**

```ts
declare const Boolean: Equivalence<boolean>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Equivalence.ts#L307)

Since v4.0.0