# fromRecord

Takes a record and returns an array of tuples containing its keys and values.

To import and use `fromRecord` from the "Array" module:

```ts
import * as Array from "effect/Array"
// Can be accessed like this
Array.fromRecord
```

**Example**

```ts
import { Array } from "effect"

const x = { a: 1, b: 2, c: 3 }
assert.deepStrictEqual(Array.fromRecord(x), [
  ["a", 1],
  ["b", 2],
  ["c", 3]
])
```

**Signature**

```ts
export declare const fromRecord: <K extends string, A>(self: Readonly<Record<K, A>>) => [K, A][]
```
