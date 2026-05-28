Package: `effect`<br />
Module: `Array`<br />

## Array.append

Adds a single element to the end of an iterable, returning a `NonEmptyArray`.

**When to use**

Use to add one element to the end of an iterable and get a new
`NonEmptyArray`.

**Details**

- Always returns a non-empty array.

**Example** (Appending an element)

```ts
import { Array } from "effect"

const result = Array.append([1, 2, 3], 4)
console.log(result) // [1, 2, 3, 4]
```

**See**

- `prepend` — add to the front
- `appendAll` — append multiple elements

**Signature**

```ts
declare const append: { <B>(last: B): <A>(self: Iterable<A>) => NonEmptyArray<A | B>; <A, B>(self: Iterable<A>, last: B): NonEmptyArray<A | B>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Array.ts#L709)

Since v2.0.0