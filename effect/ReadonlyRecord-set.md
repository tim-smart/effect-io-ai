# set

Add a new key-value pair or update an existing key's value in a record.

To import and use `set` from the "ReadonlyRecord" module:

```ts
import * as ReadonlyRecord from "effect/ReadonlyRecord"
// Can be accessed like this
ReadonlyRecord.set
```

**Example**

```ts
import { set } from "effect/ReadonlyRecord"

assert.deepStrictEqual(set("a", 5)({ a: 1, b: 2 }), { a: 5, b: 2 })
assert.deepStrictEqual(set("c", 5)({ a: 1, b: 2 }), { a: 1, b: 2, c: 5 })
```

**Signature**

```ts
export declare const set: {
  <B>(key: string, value: B): <A>(self: ReadonlyRecord<A>) => Record<string, B | A>
  <A, B>(self: ReadonlyRecord<A>, key: string, value: B): Record<string, A | B>
}
```
