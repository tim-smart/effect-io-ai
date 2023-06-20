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
  <C extends A, B extends A, A = C>(refinement: (a: A, key: string) => a is B): (
    self: ReadonlyRecord<C>
  ) => Record<string, B>
  <B extends A, A = B>(predicate: (a: A, key: string) => boolean): (self: ReadonlyRecord<B>) => Record<string, B>
  <C extends A, B extends A, A = C>(self: ReadonlyRecord<C>, refinement: (a: A, key: string) => a is B): Record<
    string,
    B
  >
  <B extends A, A = B>(self: ReadonlyRecord<B>, predicate: (a: A, key: string) => boolean): Record<string, B>
}
```
