# MonoidSum

`number` monoid under addition.

The `empty` value is `0`.

Part of the `Number` module, imported from `@effect/data/Number`.

**Example**

```ts
import { MonoidSum } from '@effect/data/Number'

assert.deepStrictEqual(MonoidSum.combine(2, 3), 5)
assert.deepStrictEqual(MonoidSum.combine(2, MonoidSum.empty), 2)
```

**Signature**

```ts
export declare const MonoidSum: monoid.Monoid<number>
```
