# toEntries

Takes a record and returns an array of tuples containing its keys and values.

To import and use `toEntries` from the "ReadonlyRecord" module:

```ts
import * as ReadonlyRecord from "effect/ReadonlyRecord"
// Can be accessed like this
ReadonlyRecord.toEntries
```

**Example**

```ts
import { toEntries } from "effect/ReadonlyRecord"

const x = { a: 1, b: 2, c: 3 }
assert.deepStrictEqual(toEntries(x), [
  ["a", 1],
  ["b", 2],
  ["c", 3]
])
```

**Signature**

```ts
export declare const toEntries: <K extends string, A>(self: ReadonlyRecord<K, A>) => [K, A][]
```
