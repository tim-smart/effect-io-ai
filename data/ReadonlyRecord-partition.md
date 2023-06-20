# partition

Partitions a `ReadonlyRecord` into two separate `Record`s based on the result of a predicate function.

To import and use `partition` from the "ReadonlyRecord" module:

```ts
import * as ReadonlyRecord from '@effect/data/ReadonlyRecord'

// Can be accessed like this
ReadonlyRecord.partition
```

**Example**

```ts
import { partition } from '@effect/data/ReadonlyRecord'

assert.deepStrictEqual(
  partition({ a: 1, b: 3 }, (n) => n > 2),
  [{ a: 1 }, { b: 3 }]
)
```

**Signature**

```ts
export declare const partition: {
  <C extends A, B extends A, A = C>(refinement: (a: A, key: string) => a is B): (
    self: ReadonlyRecord<C>
  ) => [Record<string, C>, Record<string, B>]
  <B extends A, A = B>(predicate: (a: A, key: string) => boolean): (
    self: ReadonlyRecord<B>
  ) => [Record<string, B>, Record<string, B>]
  <C extends A, B extends A, A = C>(self: ReadonlyRecord<C>, refinement: (a: A, key: string) => a is B): [
    Record<string, C>,
    Record<string, B>
  ]
  <B extends A, A = B>(self: ReadonlyRecord<B>, predicate: (a: A, key: string) => boolean): [
    Record<string, B>,
    Record<string, B>
  ]
}
```
