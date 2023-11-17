# partitionMap

Partitions the elements of a record into two groups: those that match a predicate, and those that don't.

To import and use `partitionMap` from the "ReadonlyRecord" module:

```ts
import * as ReadonlyRecord from "effect/ReadonlyRecord"
// Can be accessed like this
ReadonlyRecord.partitionMap
```

**Example**

```ts
import { partitionMap } from "effect/ReadonlyRecord"
import { left, right } from "effect/Either"

const x = { a: 1, b: 2, c: 3 }
const f = (n: number) => (n % 2 === 0 ? right(n) : left(n))
assert.deepStrictEqual(partitionMap(x, f), [{ a: 1, c: 3 }, { b: 2 }])
```

**Signature**

```ts
export declare const partitionMap: {
  <K extends string, A, B, C>(
    f: (a: A, key: K) => Either<B, C>
  ): (self: Record<K, A>) => [Record<string, B>, Record<string, C>]
  <K extends string, A, B, C>(
    self: Record<K, A>,
    f: (a: A, key: K) => Either<B, C>
  ): [Record<string, B>, Record<string, C>]
}
```
