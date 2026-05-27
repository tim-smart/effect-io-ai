Package: `effect`<br />
Module: `Equivalence`<br />

## Equivalence.Boolean

An `Equivalence` instance for booleans using strict equality (`===`).

**When to use**

Use when an API needs an `Equivalence` instance for boolean equality.

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

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Equivalence.ts#L321)

Since v4.0.0