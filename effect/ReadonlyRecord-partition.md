# partition

Partitions a record into two separate records based on the result of a predicate function.

To import and use `partition` from the "ReadonlyRecord" module:

```ts
import * as ReadonlyRecord from "effect/ReadonlyRecord"
// Can be accessed like this
ReadonlyRecord.partition
```

**Example**

```ts
import { partition } from "effect/ReadonlyRecord"

assert.deepStrictEqual(
  partition({ a: 1, b: 3 }, (n) => n > 2),
  [{ a: 1 }, { b: 3 }]
)
```

**Signature**

```ts
export declare const partition: {
  <K extends string, A, B extends A>(
    refinement: (a: NoInfer<A>, key: K) => a is B
  ): (self: Record<K, A>) => [excluded: Record<string, Exclude<A, B>>, satisfying: Record<string, B>]
  <K extends string, A>(
    predicate: (a: NoInfer<A>, key: K) => boolean
  ): (self: Record<K, A>) => [excluded: Record<string, A>, satisfying: Record<string, A>]
  <K extends string, A, B extends A>(
    self: Record<K, A>,
    refinement: (a: A, key: K) => a is B
  ): [excluded: Record<string, Exclude<A, B>>, satisfying: Record<string, B>]
  <K extends string, A>(
    self: Record<K, A>,
    predicate: (a: A, key: K) => boolean
  ): [excluded: Record<string, A>, satisfying: Record<string, A>]
}
```
