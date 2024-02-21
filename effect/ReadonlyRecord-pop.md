# pop

Retrieves the value of the property with the given `key` from a record and returns an `Option`
of a tuple with the value and the record with the removed property.
If the key is not present, returns `O.none`.

To import and use `pop` from the "ReadonlyRecord" module:

```ts
import * as ReadonlyRecord from "effect/ReadonlyRecord"
// Can be accessed like this
ReadonlyRecord.pop
```

**Example**

```ts
import { pop } from "effect/ReadonlyRecord"
import { some, none } from "effect/Option"

assert.deepStrictEqual(pop({ a: 1, b: 2 }, "a"), some([1, { b: 2 }]))
assert.deepStrictEqual(pop({ a: 1, b: 2 } as Record<string, number>, "c"), none())
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
