# modify

Apply a function to the element at the specified key, creating a new record.
If the key does not exist, the record is returned unchanged.

To import and use `modify` from the "ReadonlyRecord" module:

```ts
import * as ReadonlyRecord from "effect/ReadonlyRecord"
// Can be accessed like this
ReadonlyRecord.modify
```

**Example**

```ts
import { modify } from "effect/ReadonlyRecord"
import { some, none } from "effect/Option"

const f = (x: number) => x * 2

assert.deepStrictEqual(modify({ a: 3 }, "a", f), { a: 6 })
assert.deepStrictEqual(modify({ a: 3 }, "b", f), { a: 3 })
```

**Signature**

```ts
export declare const modify: {
  <A, B>(key: string, f: (a: A) => B): (self: ReadonlyRecord<A>) => Record<string, A | B>
  <A, B>(self: ReadonlyRecord<A>, key: string, f: (a: A) => B): Record<string, A | B>
}
```
