# Semigroup

`Semigroup` instance for `Ordering`, returns the left-most non-zero `Ordering`.

To import and use `Semigroup` from the "Ordering" module:

ts
import \* as Ordering from "@effect/typeclass/data/Ordering"
// Can be accessed like this
Ordering.Semigroup
undefined

**Example**

```ts
import { Semigroup } from "@effect/typeclass/data/Ordering"

assert.deepStrictEqual(Semigroup.combine(0, -1), -1)
assert.deepStrictEqual(Semigroup.combine(0, 1), 1)
assert.deepStrictEqual(Semigroup.combine(1, -1), 1)
```

**Signature**

```ts
export declare const Semigroup: semigroup.Semigroup<Ordering>
```
