# MonoidMax

A `Monoid` that uses the maximum between two values.

The `empty` value is `Infinity`.

To import and use `MonoidMax` from the "Number" module:

```ts
import * as Number from '@effect/data/Number'

// Can be accessed like this
Number.MonoidMax
```

**Example**

```ts
import { MonoidMax } from '@effect/data/Number'

assert.deepStrictEqual(MonoidMax.combine(2, 3), 3)
assert.deepStrictEqual(MonoidMax.combine(2, MonoidMax.empty), 2)
```

**Signature**

```ts
export declare const MonoidMax: monoid.Monoid<number>
```
