# partitionMap

Partitions the elements of a `ReadonlyRecord` into two groups: those that match a predicate, and those that don't.

Part of the `ReadonlyRecord` module, imported from `@effect/data/ReadonlyRecord`.

**Example**

```ts
import { partitionMap } from '@effect/data/ReadonlyRecord'
import { left, right } from '@effect/data/Either'

const x = { a: 1, b: 2, c: 3 }
const f = (n: number) => (n % 2 === 0 ? right(n) : left(n))
assert.deepStrictEqual(partitionMap(x, f), [{ a: 1, c: 3 }, { b: 2 }])
```

**Signature**

```ts
export declare const partitionMap: {
  <A, B, C>(f: (a: A, key: string) => Either<B, C>): (self: ReadonlyRecord<A>) => [Record<string, B>, Record<string, C>]
  <A, B, C>(self: ReadonlyRecord<A>, f: (a: A, key: string) => Either<B, C>): [Record<string, B>, Record<string, C>]
}
```
