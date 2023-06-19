# isEmptyRecord

Determine if a `Record` is empty.

Part of the `ReadonlyRecord` module, imported from `@effect/data/ReadonlyRecord`.

**Example**

```ts
import { isEmptyRecord } from '@effect/data/ReadonlyRecord'

assert.deepStrictEqual(isEmptyRecord({}), true)
assert.deepStrictEqual(isEmptyRecord({ a: 3 }), false)
```

**Signature**

```ts
export declare const isEmptyRecord: <A>(self: Record<string, A>) => self is Record<string, never>
```
