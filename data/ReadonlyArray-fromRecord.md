# fromRecord

Takes a record and returns an array of tuples containing its keys and values.

Part of the `ReadonlyArray` module, imported from `@effect/data/ReadonlyArray`.

**Example**

```ts
import { fromRecord } from '@effect/data/ReadonlyArray'

const x = { a: 1, b: 2, c: 3 }
assert.deepStrictEqual(fromRecord(x), [
  ['a', 1],
  ['b', 2],
  ['c', 3],
])
```

**Signature**

```ts
export declare const fromRecord: <K extends string, A>(self: Readonly<Record<K, A>>) => [K, A][]
```
