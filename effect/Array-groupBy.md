Package: `effect`<br />
Module: `Array`<br />

## Array.groupBy

Splits an `Iterable` into sub-non-empty-arrays stored in an object, based on the result of calling a `string`-returning
function on each element, and grouping the results according to values returned

**Example**

```ts
import { Array } from "effect"

const people = [
  { name: "Alice", group: "A" },
  { name: "Bob", group: "B" },
  { name: "Charlie", group: "A" }
]

const result = Array.groupBy(people, person => person.group)
console.log(result)
// {
//  A: [{ name: "Alice", group: "A" }, { name: "Charlie", group: "A" }],
//  B: [{ name: "Bob", group: "B" }]
// }
```

**Signature**

```ts
declare const groupBy: { <A, K extends string | symbol>(f: (a: A) => K): (self: Iterable<A>) => Record<Record.ReadonlyRecord.NonLiteralKey<K>, NonEmptyArray<A>>; <A, K extends string | symbol>(self: Iterable<A>, f: (a: A) => K): Record<Record.ReadonlyRecord.NonLiteralKey<K>, NonEmptyArray<A>>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Array.ts#L2233)

Since v2.0.0