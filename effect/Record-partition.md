# partition

Partitions a record into two separate records based on the result of a predicate function.

To import and use `partition` from the "Record" module:

ts
import \* as Record from "effect/Record"
// Can be accessed like this
Record.partition
undefined

**Example**

```ts
import { partition } from "effect/Record"

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
  ): (
    self: ReadonlyRecord<K, A>
  ) => [
    excluded: Record<ReadonlyRecord.NonLiteralKey<K>, Exclude<A, B>>,
    satisfying: Record<ReadonlyRecord.NonLiteralKey<K>, B>
  ]
  <K extends string, A>(
    predicate: (a: NoInfer<A>, key: K) => boolean
  ): (
    self: ReadonlyRecord<K, A>
  ) => [excluded: Record<ReadonlyRecord.NonLiteralKey<K>, A>, satisfying: Record<ReadonlyRecord.NonLiteralKey<K>, A>]
  <K extends string, A, B extends A>(
    self: ReadonlyRecord<K, A>,
    refinement: (a: A, key: K) => a is B
  ): [
    excluded: Record<ReadonlyRecord.NonLiteralKey<K>, Exclude<A, B>>,
    satisfying: Record<ReadonlyRecord.NonLiteralKey<K>, B>
  ]
  <K extends string, A>(
    self: ReadonlyRecord<K, A>,
    predicate: (a: A, key: K) => boolean
  ): [excluded: Record<ReadonlyRecord.NonLiteralKey<K>, A>, satisfying: Record<ReadonlyRecord.NonLiteralKey<K>, A>]
}
```
