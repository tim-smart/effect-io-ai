# Semigroup

`Semigroup` instance for `Ordering`, returns the left-most non-zero `Ordering`.

Part of the `Ordering` module, imported from `@effect/data/Ordering`.

**Example**

```ts
import { Semigroup } from '@effect/data/Ordering'

assert.deepStrictEqual(Semigroup.combine(0, -1), -1)
assert.deepStrictEqual(Semigroup.combine(0, 1), 1)
assert.deepStrictEqual(Semigroup.combine(1, -1), 1)
```

**Signature**

```ts
export declare const Semigroup: semigroup.Semigroup<Ordering>
```
