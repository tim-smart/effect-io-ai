# replace

Replace a key's value in a record and return the updated record.
If the key does not exist in the record, a copy of the original record is returned.

To import and use `replace` from the "Record" module:

```ts
import * as Record from "effect/Record"
// Can be accessed like this
Record.replace
```

**Example**

```ts
import { replace } from "effect/Record"
import { some, none } from "effect/Option"

assert.deepStrictEqual(replace("a", 3)({ a: 1, b: 2 }), { a: 3, b: 2 })
assert.deepStrictEqual(replace("c", 3)({ a: 1, b: 2 }), { a: 1, b: 2 })
```

**Signature**

```ts
export declare const replace: {
  <K extends string | symbol, B>(key: NoInfer<K>, value: B): <A>(self: ReadonlyRecord<K, A>) => Record<K, B | A>
  <K extends string | symbol, A, B>(self: ReadonlyRecord<K, A>, key: NoInfer<K>, value: B): Record<K, A | B>
}
```
