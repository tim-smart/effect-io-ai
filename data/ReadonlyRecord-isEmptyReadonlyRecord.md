# isEmptyReadonlyRecord

Determine if a `ReadonlyRecord` is empty.

Part of the `ReadonlyRecord` module, imported from `@effect/data/ReadonlyRecord`.

**Example**

```ts
import { isEmptyReadonlyRecord } from '@effect/data/ReadonlyRecord'

assert.deepStrictEqual(isEmptyReadonlyRecord({}), true)
assert.deepStrictEqual(isEmptyReadonlyRecord({ a: 3 }), false)
```

**Signature**

```ts
export declare const isEmptyReadonlyRecord: <A>(self: ReadonlyRecord<A>) => self is ReadonlyRecord<never>
```
