# filterMap

Transforms a record into a record by applying the function `f` to each key and value in the original record.
If the function returns `Some`, the key-value pair is included in the output record.

To import and use `filterMap` from the "ReadonlyRecord" module:

```ts
import * as ReadonlyRecord from 'effect/ReadonlyRecord'

// Can be accessed like this
ReadonlyRecord.filterMap
```

**Example**

```ts
import { filterMap } from 'effect/ReadonlyRecord'
import { some, none } from 'effect/Option'

const x = { a: 1, b: 2, c: 3 }
const f = (a: number, key: string) => (a > 2 ? some(a * 2) : none())
assert.deepStrictEqual(filterMap(x, f), { c: 6 })
```

**Signature**

```ts
export declare const filterMap: {
  <K extends string, A, B>(f: (a: A, key: K) => Option.Option<B>): (self: Record<K, A>) => Record<string, B>
  <K extends string, A, B>(self: Record<K, A>, f: (a: A, key: K) => Option.Option<B>): Record<string, B>
}
```
