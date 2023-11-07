# partition

Partitions a record into two separate records based on the result of a predicate function.

To import and use `partition` from the "ReadonlyRecord" module:

```ts
import * as ReadonlyRecord from 'effect/ReadonlyRecord'

// Can be accessed like this
ReadonlyRecord.partition
```

**Example**

```ts
import { partition } from 'effect/ReadonlyRecord'

assert.deepStrictEqual(
  partition({ a: 1, b: 3 }, (n) => n > 2),
  [{ a: 1 }, { b: 3 }]
)
```

**Signature**

```ts
export declare const partition: {
  <K extends string, C extends A, B extends A, A = C>(refinement: (a: A, key: K) => a is B): (
    self: Record<K, C>
  ) => [Record<string, C>, Record<string, B>]
  <K extends string, B extends A, A = B>(predicate: (a: A, key: K) => boolean): (
    self: Record<K, B>
  ) => [Record<string, B>, Record<string, B>]
  <K extends string, C extends A, B extends A, A = C>(self: Record<K, C>, refinement: (a: A, key: K) => a is B): [
    Record<string, C>,
    Record<string, B>
  ]
  <K extends string, B extends A, A = B>(self: Record<K, B>, predicate: (a: A, key: K) => boolean): [
    Record<string, B>,
    Record<string, B>
  ]
}
```
