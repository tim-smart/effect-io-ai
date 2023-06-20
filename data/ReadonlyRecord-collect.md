# collect

Transforms the values of a `ReadonlyRecord` into an `Array` with a custom mapping function.

To import and use `collect` from the "ReadonlyRecord" module:

```ts
import * as ReadonlyRecord from '@effect/data/ReadonlyRecord'

// Can be accessed like this
ReadonlyRecord.collect
```

**Example**

```ts
import { collect } from '@effect/data/ReadonlyRecord'

const x = { a: 1, b: 2, c: 3 }
assert.deepStrictEqual(
  collect(x, (key, n) => [key, n]),
  [
    ['a', 1],
    ['b', 2],
    ['c', 3],
  ]
)
```

**Signature**

```ts
export declare const collect: {
  <K extends string, A, B>(f: (key: K, a: A) => B): (self: Record<K, A>) => B[]
  <K extends string, A, B>(self: Record<K, A>, f: (key: K, a: A) => B): B[]
}
```
