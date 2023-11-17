# fromRecord

Takes a record and returns an array of tuples containing its keys and values.

To import and use `fromRecord` from the "ReadonlyArray" module:

```ts
import * as ReadonlyArray from "effect/ReadonlyArray"
// Can be accessed like this
ReadonlyArray.fromRecord
```

**Example**

```ts
import { fromRecord } from "effect/ReadonlyArray"

const x = { a: 1, b: 2, c: 3 }
assert.deepStrictEqual(fromRecord(x), [
  ["a", 1],
  ["b", 2],
  ["c", 3]
])
```

**Signature**

```ts
export declare const fromRecord: <K extends string, A>(self: Readonly<Record<K, A>>) => [K, A][]
```
