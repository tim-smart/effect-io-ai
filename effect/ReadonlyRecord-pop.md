# pop

Retrieves the value of the property with the given `key` from a record and returns an `Option`
of a tuple with the value and the record with the removed property.
If the key is not present, returns `O.none`.

To import and use `pop` from the "ReadonlyRecord" module:

```ts
import * as ReadonlyRecord from 'effect/ReadonlyRecord'

// Can be accessed like this
ReadonlyRecord.pop
```

**Example**

```ts
import { pop } from 'effect/ReadonlyRecord'
import { some, none } from 'effect/Option'

assert.deepStrictEqual(pop({ a: 1, b: 2 }, 'a'), some([1, { b: 2 }]))
assert.deepStrictEqual(pop({ a: 1, b: 2 }, 'c'), none())
```

**Signature**

```ts
export declare const pop: {
  (key: string): <A>(self: ReadonlyRecord<A>) => Option.Option<[A, Record<string, A>]>
  <A>(self: ReadonlyRecord<A>, key: string): Option.Option<[A, Record<string, A>]>
}
```
