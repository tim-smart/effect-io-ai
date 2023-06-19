# MonoidMin

A `Monoid` that uses the minimum between two values.

The `empty` value is `-Infinity`.

Part of the `Number` module, imported from `@effect/data/Number`.

**Example**

```ts
import { MonoidMin } from '@effect/data/Number'

assert.deepStrictEqual(MonoidMin.combine(2, 3), 2)
assert.deepStrictEqual(MonoidMin.combine(2, MonoidMin.empty), 2)
```

**Signature**

```ts
export declare const MonoidMin: monoid.Monoid<number>
```
