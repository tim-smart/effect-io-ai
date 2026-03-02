Package: `effect`<br />
Module: `Array`<br />

## Array.insertAt

Inserts an element at the specified index, returning a new `NonEmptyArray`,
or `undefined` if the index is out of bounds.

- Valid indices: `0` to `length` (inclusive — inserting at `length` appends).
- Does not mutate the input.

**Example** (Inserting at an index)

```ts
import { Array } from "effect"

console.log(Array.insertAt(["a", "b", "c", "e"], 3, "d")) // ["a", "b", "c", "d", "e"]
```

**See**

- `replace` — replace an existing element
- `modify` — transform an element at an index

**Signature**

```ts
declare const insertAt: { <B>(i: number, b: B): <A>(self: Iterable<A>) => NonEmptyArray<A | B> | undefined; <A, B>(self: Iterable<A>, i: number, b: B): NonEmptyArray<A | B> | undefined; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Array.ts#L1662)

Since v2.0.0