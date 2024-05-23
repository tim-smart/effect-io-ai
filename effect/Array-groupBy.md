# groupBy

Splits an `Iterable` into sub-non-empty-arrays stored in an object, based on the result of calling a `string`-returning
function on each element, and grouping the results according to values returned

To import and use `groupBy` from the "Array" module:

```ts
import * as Array from "effect/Array"
// Can be accessed like this
Array.groupBy
```

**Example**

```ts
import { Array } from "effect"

const people = [
  { name: "Alice", group: "A" },
  { name: "Bob", group: "B" },
  { name: "Charlie", group: "A" }
]
const result = Array.groupBy(people, (person) => person.group)
assert.deepStrictEqual(result, {
  A: [
    { name: "Alice", group: "A" },
    { name: "Charlie", group: "A" }
  ],
  B: [{ name: "Bob", group: "B" }]
})
```

**Signature**

```ts
export declare const groupBy: {
  <A, K extends string | symbol>(
    f: (a: A) => K
  ): (self: Iterable<A>) => Record<Record.ReadonlyRecord.NonLiteralKey<K>, [A, ...A[]]>
  <A, K extends string | symbol>(
    self: Iterable<A>,
    f: (a: A) => K
  ): Record<Record.ReadonlyRecord.NonLiteralKey<K>, [A, ...A[]]>
}
```
