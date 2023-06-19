# MonoidMultiply

`number` monoid under multiplication.

The `empty` value is `1`.

Part of the `Number` module, imported from `@effect/data/Number`.

**Example**

```ts
import { MonoidMultiply } from '@effect/data/Number'

assert.deepStrictEqual(MonoidMultiply.combine(2, 3), 6)
assert.deepStrictEqual(MonoidMultiply.combine(2, MonoidMultiply.empty), 2)
```

**Signature**

```ts
export declare const MonoidMultiply: monoid.Monoid<number>
```
