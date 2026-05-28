Package: `effect`<br />
Module: `Array`<br />

## Array.groupBy

Groups elements into a record by a key-returning function. Each key maps
to a `NonEmptyArray` of elements that produced that key.

**When to use**

Use to build buckets of elements indexed by a computed string or symbol key.

**Details**

- Unlike `group`/`groupWith`, elements do not need to be
  adjacent to be grouped together.
- Key function must return a `string` or `symbol`.

**Example** (Grouping by a property)

```ts
import { Array } from "effect"

const people = [
  { name: "Alice", group: "A" },
  { name: "Bob", group: "B" },
  { name: "Charlie", group: "A" }
]

const result = Array.groupBy(people, (person) => person.group)
console.log(result)
// { A: [{ name: "Alice", group: "A" }, { name: "Charlie", group: "A" }], B: [{ name: "Bob", group: "B" }] }
```

**See**

- `group` — group adjacent equal elements
- `groupWith` — group adjacent elements by custom equality

**Signature**

```ts
declare const groupBy: { <A, K extends string | symbol>(f: (a: A) => K): (self: Iterable<A>) => Record<Record.ReadonlyRecord.NonLiteralKey<K>, NonEmptyArray<A>>; <A, K extends string | symbol>(self: Iterable<A>, f: (a: A) => K): Record<Record.ReadonlyRecord.NonLiteralKey<K>, NonEmptyArray<A>>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Array.ts#L3097)

Since v2.0.0