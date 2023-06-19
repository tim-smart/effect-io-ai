# toEntries

Takes a record and returns an array of tuples containing its keys and values.

Part of the `ReadonlyRecord` module, imported from `@effect/data/ReadonlyRecord`.

**Example**

```ts
import { toEntries } from '@effect/data/ReadonlyRecord'

const x = { a: 1, b: 2, c: 3 }
assert.deepStrictEqual(toEntries(x), [
  ['a', 1],
  ['b', 2],
  ['c', 3],
])
```

**Signature**

```ts
export declare const toEntries: <K extends string, A>(self: Record<K, A>) => [K, A][]
```
