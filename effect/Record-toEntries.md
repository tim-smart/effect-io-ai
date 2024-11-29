# toEntries

Takes a record and returns an array of tuples containing its keys and values.

To import and use `toEntries` from the "Record" module:

ts
import \* as Record from "effect/Record"
// Can be accessed like this
Record.toEntries
undefined

**Example**

```ts
import { toEntries } from "effect/Record"

const x = { a: 1, b: 2, c: 3 }
assert.deepStrictEqual(toEntries(x), [
  ["a", 1],
  ["b", 2],
  ["c", 3]
])
```

**Signature**

```ts
export declare const toEntries: <K extends string, A>(self: ReadonlyRecord<K, A>) => Array<[K, A]>
```
