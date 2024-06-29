# MonoidMultiply

`number` monoid under multiplication.

The `empty` value is `1`.

To import and use `MonoidMultiply` from the "Number" module:

```ts
import * as Number from "@effect/typeclass/data/Number"
// Can be accessed like this
Number.MonoidMultiply
```

**Example**

```ts
import { MonoidMultiply } from "@effect/typeclass/data/Number"

assert.deepStrictEqual(MonoidMultiply.combine(2, 3), 6)
assert.deepStrictEqual(MonoidMultiply.combine(2, MonoidMultiply.empty), 2)
```

**Signature**

```ts
export declare const MonoidMultiply: monoid.Monoid<number>
```
