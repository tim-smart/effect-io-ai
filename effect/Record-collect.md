# collect

Transforms the values of a record into an `Array` with a custom mapping function.

To import and use `collect` from the "Record" module:

```ts
import * as Record from "effect/Record"
// Can be accessed like this
Record.collect
```

**Example**

```ts
import { collect } from "effect/Record"

const x = { a: 1, b: 2, c: 3 }
assert.deepStrictEqual(
  collect(x, (key, n) => [key, n]),
  [
    ["a", 1],
    ["b", 2],
    ["c", 3]
  ]
)
```

**Signature**

```ts
export declare const collect: {
  <K extends string, A, B>(f: (key: K, a: A) => B): (self: ReadonlyRecord<K, A>) => B[]
  <K extends string, A, B>(self: ReadonlyRecord<K, A>, f: (key: K, a: A) => B): B[]
}
```
