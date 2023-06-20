# filter

Selects properties from a record whose values match the given predicate.

To import and use `filter` from the "ReadonlyRecord" module:

```ts
import * as ReadonlyRecord from '@effect/data/ReadonlyRecord'

// Can be accessed like this
ReadonlyRecord.filter
```

**Example**

```ts
import { filter } from '@effect/data/ReadonlyRecord'

const x = { a: 1, b: 2, c: 3, d: 4 }
assert.deepStrictEqual(
  filter(x, (n) => n > 2),
  { c: 3, d: 4 }
)
```

**Signature**

```ts
export declare const filter: {
  <K extends string, C extends A, B extends A, A = C>(refinement: (a: A, key: K) => a is B): (
    self: Record<K, C>
  ) => Record<string, B>
  <K extends string, B extends A, A = B>(predicate: (a: A, key: K) => boolean): (
    self: Record<K, B>
  ) => Record<string, B>
  <K extends string, C extends A, B extends A, A = C>(self: Record<K, C>, refinement: (a: A, key: K) => a is B): Record<
    string,
    B
  >
  <K extends string, B extends A, A = B>(self: Record<K, B>, predicate: (a: A, key: K) => boolean): Record<string, B>
}
```
