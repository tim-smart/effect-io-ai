# modify

Apply a function to the element at the specified key, creating a new record.
If the key does not exist, the record is returned unchanged.

To import and use `modify` from the "Record" module:

```ts
import * as Record from "effect/Record"
// Can be accessed like this
Record.modify
```

**Example**

```ts
import { modify } from "effect/Record"
import { some, none } from "effect/Option"

const f = (x: number) => x * 2

assert.deepStrictEqual(modify({ a: 3 }, "a", f), { a: 6 })
assert.deepStrictEqual(modify({ a: 3 } as Record<string, number>, "b", f), { a: 3 })
```

**Signature**

```ts
export declare const modify: {
  <K extends string | symbol, A, B>(key: NoInfer<K>, f: (a: A) => B): (self: ReadonlyRecord<K, A>) => Record<K, A | B>
  <K extends string | symbol, A, B>(self: ReadonlyRecord<K, A>, key: NoInfer<K>, f: (a: A) => B): Record<K, A | B>
}
```
