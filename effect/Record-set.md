# set

Add a new key-value pair or update an existing key's value in a record.

To import and use `set` from the "Record" module:

ts
import \* as Record from "effect/Record"
// Can be accessed like this
Record.set
undefined

**Example**

```ts
import { set } from "effect/Record"

assert.deepStrictEqual(set("a", 5)({ a: 1, b: 2 }), { a: 5, b: 2 })
assert.deepStrictEqual(set("c", 5)({ a: 1, b: 2 }), { a: 1, b: 2, c: 5 })
```

**Signature**

```ts
export declare const set: {
  <K extends string | symbol, K1 extends K | ((string | symbol) & {}), B>(
    key: K1,
    value: B
  ): <A>(self: ReadonlyRecord<K, A>) => Record<K | K1, A | B>
  <K extends string | symbol, A, K1 extends K | ((string | symbol) & {}), B>(
    self: ReadonlyRecord<K, A>,
    key: K1,
    value: B
  ): Record<K | K1, A | B>
}
```
