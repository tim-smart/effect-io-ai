Package: `effect`<br />
Module: `Equivalence`<br />

## Equivalence.strictEqual

Creates an equivalence relation that uses strict equality (`===`) to compare values.

**When to use**

Use when you need primitive types where `===` is appropriate
- Use when you need reference equality for objects
- Use as a building block for more complex equivalences via `mapInput` or `combine`
- Use when performance is critical and you do not need structural equality

**Details**

- Does not mutate inputs
- Uses JavaScript's strict equality operator (`===`)
- For primitives: compares values directly
- For objects: compares by reference, so only the same object instance is equivalent

**Gotchas**

`NaN !== NaN`, so `NaN` values are never considered equivalent.

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

**See**

- `make`
- `Equal` for structural equality

**Signature**

```ts
declare const strictEqual: <A>() => Equivalence<A>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Equivalence.ts#L250)

Since v4.0.0