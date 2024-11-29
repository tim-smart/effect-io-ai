# pop

Retrieves the value of the property with the given `key` from a record and returns an `Option`
of a tuple with the value and the record with the removed property.
If the key is not present, returns `O.none`.

To import and use `pop` from the "Record" module:

ts
import \* as Record from "effect/Record"
// Can be accessed like this
Record.pop
undefined

**Example**

```ts
import { Record as R, Option } from "effect"

assert.deepStrictEqual(R.pop({ a: 1, b: 2 }, "a"), Option.some([1, { b: 2 }]))
assert.deepStrictEqual(R.pop({ a: 1, b: 2 } as Record<string, number>, "c"), Option.none())
```

**Signature**

```ts
export declare const pop: {
  <K extends string | symbol, X extends K>(
    key: X
  ): <A>(self: ReadonlyRecord<K, A>) => Option.Option<[A, Record<Exclude<K, X>, A>]>
  <K extends string | symbol, A, X extends K>(
    self: ReadonlyRecord<K, A>,
    key: X
  ): Option.Option<[A, Record<Exclude<K, X>, A>]>
}
```
