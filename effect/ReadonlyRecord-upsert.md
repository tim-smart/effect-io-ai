# upsert

Add a new key-value pair or update an existing key's value in a record.

To import and use `upsert` from the "ReadonlyRecord" module:

```ts
import * as ReadonlyRecord from "effect/ReadonlyRecord"
// Can be accessed like this
ReadonlyRecord.upsert
```

**Example**

```ts
import { upsert } from "effect/ReadonlyRecord"

assert.deepStrictEqual(upsert("a", 5)({ a: 1, b: 2 }), { a: 5, b: 2 })
assert.deepStrictEqual(upsert("c", 5)({ a: 1, b: 2 }), { a: 1, b: 2, c: 5 })
```

**Signature**

```ts
export declare const upsert: {
  <B>(key: string, value: B): <A>(self: ReadonlyRecord<A>) => Record<string, B | A>
  <A, B>(self: ReadonlyRecord<A>, key: string, value: B): Record<string, A | B>
}
```
