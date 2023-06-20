# filterMap

Transforms a `ReadonlyRecord` into a `Record` by applying the function `f` to each key and value in the original `ReadonlyRecord`.
If the function returns `Some`, the key-value pair is included in the output `Record`.

To import and use `filterMap` from the "ReadonlyRecord" module:

```ts
import * as ReadonlyRecord from '@effect/data/ReadonlyRecord'

// Can be accessed like this
ReadonlyRecord.filterMap
```

**Example**

```ts
import { filterMap } from '@effect/data/ReadonlyRecord'
import { some, none } from '@effect/data/Option'

const x = { a: 1, b: 2, c: 3 }
const f = (a: number, key: string) => (a > 2 ? some(a * 2) : none())
assert.deepStrictEqual(filterMap(x, f), { c: 6 })
```

**Signature**

```ts
export declare const filterMap: {
  <K extends string, A, B>(f: (a: A, key: K) => Option<B>): (self: Record<K, A>) => Record<string, B>
  <K extends string, A, B>(self: Record<K, A>, f: (a: A, key: K) => Option<B>): Record<string, B>
}
```
