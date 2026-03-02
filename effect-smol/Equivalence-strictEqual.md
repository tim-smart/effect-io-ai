Package: `effect`<br />
Module: `Equivalence`<br />

## Equivalence.strictEqual

Creates an equivalence relation that uses strict equality (`===`) to compare values.

When to use this:
- For primitive types (numbers, strings, booleans) where `===` is appropriate
- When you need reference equality for objects (same object instance)
- As a building block for more complex equivalences via `mapInput` or `combine`
- When performance is critical and you don't need structural equality

Behavior:
- Does not mutate inputs
- Uses JavaScript's strict equality operator (`===`)
- For primitives: compares values directly
- For objects: compares by reference (same object instance)
- Note: `NaN !== NaN`, so `NaN` values are never considered equivalent

**Example** (Primitive types)

```ts
import { Equivalence } from "effect"

const strictEq = Equivalence.strictEqual<number>()

console.log(strictEq(1, 1)) // true
console.log(strictEq(1, 2)) // false
console.log(strictEq(NaN, NaN)) // false (NaN !== NaN)
```

**Example** (Reference equality for objects)

```ts
import { Equivalence } from "effect"

const obj = { value: 42 }
const strictObjEq = Equivalence.strictEqual<typeof obj>()

console.log(strictObjEq(obj, obj)) // true
console.log(strictObjEq(obj, { value: 42 })) // false (different references)
```

See also: `make`, `Equal` (for structural equality)

**Signature**

```ts
declare const strictEqual: <A>() => Equivalence<A>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Equivalence.ts#L240)

Since v4.0.0