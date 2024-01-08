# MonoidMin

A `Monoid` that uses the minimum between two values.

The `empty` value is `-Infinity`.

To import and use `MonoidMin` from the "Number" module:

```ts
import * as Number from "@effect/typeclass/data/Number"
// Can be accessed like this
Number.MonoidMin
```

**Example**

```ts
import { MonoidMin } from "@effect/typeclass/data/Number"

assert.deepStrictEqual(MonoidMin.combine(2, 3), 2)
assert.deepStrictEqual(MonoidMin.combine(2, MonoidMin.empty), 2)
```

**Signature**

```ts
export declare const MonoidMin: monoid.Monoid<number>
```
