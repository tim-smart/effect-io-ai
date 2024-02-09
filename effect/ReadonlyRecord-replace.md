# replace

Replace a key's value in a record and return the updated record.

To import and use `replace` from the "ReadonlyRecord" module:

```ts
import * as ReadonlyRecord from "effect/ReadonlyRecord"
// Can be accessed like this
ReadonlyRecord.replace
```

**Example**

```ts
import { replace } from "effect/ReadonlyRecord"
import { some, none } from "effect/Option"

assert.deepStrictEqual(replace("a", 3)({ a: 1, b: 2 }), { a: 3, b: 2 })
assert.deepStrictEqual(replace("c", 3)({ a: 1, b: 2 }), { a: 1, b: 2 })
```

**Signature**

```ts
export declare const replace: {
  <B>(key: string, value: B): <A>(self: ReadonlyRecord<A>) => Record<string, B | A>
  <A, B>(self: ReadonlyRecord<A>, key: string, value: B): Record<string, A | B>
}
```
