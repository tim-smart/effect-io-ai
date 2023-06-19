# isRecord

A guard that succeeds when the input is a record.

Part of the `Predicate` module, imported from `@effect/data/Predicate`.

**Example**

```ts
import { isRecord } from '@effect/data/Predicate'

assert.deepStrictEqual(isRecord({}), true)
assert.deepStrictEqual(isRecord({ a: 1 }), true)

assert.deepStrictEqual(isRecord([]), false)
assert.deepStrictEqual(isRecord([1, 2, 3]), false)
assert.deepStrictEqual(isRecord(null), false)
assert.deepStrictEqual(isRecord(undefined), false)
```

**Signature**

```ts
export declare const isRecord: (input: unknown) => input is { [x: string]: unknown; [x: symbol]: unknown }
```
