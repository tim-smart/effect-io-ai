Package: `effect`<br />
Module: `Equivalence`<br />

## Equivalence.strictEqual

Creates an equivalence relation that uses strict equality (`===`) to compare values.

**When to use**

Use when you need strict equality (`===`) as the comparison.

**Details**

Uses JavaScript's strict equality operator (`===`). Primitives compare by
value. Objects compare by reference, so only the same object instance is
equivalent. Use this as a building block for more complex equivalences via
`mapInput` or `combine`.

**Gotchas**

`NaN !== NaN`, so `NaN` values are never considered equivalent.

**Example** (Comparing primitive types)

```ts
import { Equivalence } from "effect"

const strictEq = Equivalence.strictEqual<number>()

console.log(strictEq(1, 1)) // true
console.log(strictEq(1, 2)) // false
console.log(strictEq(NaN, NaN)) // false (NaN !== NaN)
```

**Example** (Comparing objects by reference)

```ts
import { Equivalence } from "effect"

const obj = { value: 42 }
const strictObjEq = Equivalence.strictEqual<typeof obj>()

console.log(strictObjEq(obj, obj)) // true
console.log(strictObjEq(obj, { value: 42 })) // false (different references)
```

**See**

- `make`
- `Equal` for structural equality

**Signature**

```ts
declare const strictEqual: <A>() => Equivalence<A>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Equivalence.ts#L199)

Since v4.0.0