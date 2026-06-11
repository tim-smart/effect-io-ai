Package: `effect`<br />
Module: `Boolean`<br />

## Boolean.Equivalence

Equivalence instance for booleans using strict equality (`===`).

**When to use**

Use when checking boolean equality through APIs that accept an equivalence
relation.

**Example** (Comparing booleans for equivalence)

```ts
import { Boolean } from "effect"

console.log(Boolean.Equivalence(true, true)) // true
console.log(Boolean.Equivalence(true, false)) // false
```

**Signature**

```ts
declare const Equivalence: Equ.Equivalence<boolean>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Boolean.ts#L157)

Since v2.0.0