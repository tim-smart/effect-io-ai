Package: `effect`<br />
Module: `Boolean`<br />

## Boolean.Equivalence

An `Equivalence` instance for booleans using strict equality (`===`).

**Example**

```ts
import { Boolean } from "effect"

console.log(Boolean.Equivalence(true, true)) // true
console.log(Boolean.Equivalence(true, false)) // false
```

**Signature**

```ts
declare const Equivalence: Equ.Equivalence<boolean>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Boolean.ts#L120)

Since v4.0.0