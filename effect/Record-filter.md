# filter

Selects properties from a record whose values match the given predicate.

To import and use `filter` from the "Record" module:

ts
import \* as Record from "effect/Record"
// Can be accessed like this
Record.filter
undefined

**Example**

```ts
import { filter } from "effect/Record"

const x = { a: 1, b: 2, c: 3, d: 4 }
assert.deepStrictEqual(
  filter(x, (n) => n > 2),
  { c: 3, d: 4 }
)
```

**Signature**

```ts
export declare const filter: {
  <K extends string, A, B extends A>(
    refinement: (a: NoInfer<A>, key: K) => a is B
  ): (self: ReadonlyRecord<K, A>) => Record<ReadonlyRecord.NonLiteralKey<K>, B>
  <K extends string, A>(
    predicate: (A: NoInfer<A>, key: K) => boolean
  ): (self: ReadonlyRecord<K, A>) => Record<ReadonlyRecord.NonLiteralKey<K>, A>
  <K extends string, A, B extends A>(
    self: ReadonlyRecord<K, A>,
    refinement: (a: A, key: K) => a is B
  ): Record<ReadonlyRecord.NonLiteralKey<K>, B>
  <K extends string, A>(
    self: ReadonlyRecord<K, A>,
    predicate: (a: A, key: K) => boolean
  ): Record<ReadonlyRecord.NonLiteralKey<K>, A>
}
```
