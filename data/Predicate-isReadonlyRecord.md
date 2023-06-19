# isReadonlyRecord

A guard that succeeds when the input is a readonly record.

Part of the `Predicate` module, imported from `@effect/data/Predicate`.

**Example**

```ts
import { isReadonlyRecord } from '@effect/data/Predicate'

assert.deepStrictEqual(isReadonlyRecord({}), true)
assert.deepStrictEqual(isReadonlyRecord({ a: 1 }), true)

assert.deepStrictEqual(isReadonlyRecord([]), false)
assert.deepStrictEqual(isReadonlyRecord([1, 2, 3]), false)
assert.deepStrictEqual(isReadonlyRecord(null), false)
assert.deepStrictEqual(isReadonlyRecord(undefined), false)
```

**Signature**

```ts
export declare const isReadonlyRecord: (
  input: unknown
) => input is { readonly [x: string]: unknown; readonly [x: symbol]: unknown }
```
