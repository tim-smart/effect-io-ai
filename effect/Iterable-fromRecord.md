# fromRecord

Takes a record and returns an Iterable of tuples containing its keys and values.

To import and use `fromRecord` from the "Iterable" module:

```ts
import * as Iterable from "effect/Iterable"
// Can be accessed like this
Iterable.fromRecord
```

**Example**

```ts
import { fromRecord } from "effect/Iterable"

const x = { a: 1, b: 2, c: 3 }
assert.deepStrictEqual(Array.from(fromRecord(x)), [
  ["a", 1],
  ["b", 2],
  ["c", 3]
])
```

**Signature**

```ts
export declare const fromRecord: <K extends string, A>(self: Readonly<Record<K, A>>) => Iterable<[K, A]>
```
