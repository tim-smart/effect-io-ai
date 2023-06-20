# toArray

Takes a record and returns an array of tuples containing its keys and values.

Alias of {@link toEntries}.

To import and use `toArray` from the "ReadonlyRecord" module:

```ts
import * as ReadonlyRecord from '@effect/data/ReadonlyRecord'

// Can be accessed like this
ReadonlyRecord.toArray
```

**Example**

```ts
import { toArray } from '@effect/data/ReadonlyRecord'

const x = { a: 1, b: 2, c: 3 }
assert.deepStrictEqual(toArray(x), [
  ['a', 1],
  ['b', 2],
  ['c', 3],
])
```

**Signature**

```ts
export declare const toArray: <K extends string, A>(self: Record<K, A>) => [K, A][]
```
