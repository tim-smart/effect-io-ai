# filter

Selects properties from a record whose values match the given predicate.

To import and use `filter` from the "ReadonlyRecord" module:

```ts
import * as ReadonlyRecord from "effect/ReadonlyRecord"
// Can be accessed like this
ReadonlyRecord.filter
```

**Example**

```ts
import { filter } from "effect/ReadonlyRecord"

const x = { a: 1, b: 2, c: 3, d: 4 }
assert.deepStrictEqual(
  filter(x, (n) => n > 2),
  { c: 3, d: 4 }
)
```

**Signature**

```ts
export declare const filter: {
  <K extends string, A, B extends A>(refinement: (a: A, key: K) => a is B): (self: Record<K, A>) => Record<string, B>
  <K extends string, B extends A, A = B>(
    predicate: (A: A, key: K) => boolean
  ): (self: Record<K, B>) => Record<string, B>
  <K extends string, A, B extends A>(self: Record<K, A>, refinement: (a: A, key: K) => a is B): Record<string, B>
  <K extends string, A>(self: Record<K, A>, predicate: (a: A, key: K) => boolean): Record<string, A>
}
```
