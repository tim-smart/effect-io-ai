Package: `effect`<br />
Module: `Array`<br />

## Array.prepend

Adds a single element to the front of an iterable, returning a `NonEmptyArray`.

- Always returns a non-empty array.
- Does not mutate the input.

**Example** (Prepending an element)

```ts
import { Array } from "effect"

const result = Array.prepend([2, 3, 4], 1)
console.log(result) // [1, 2, 3, 4]
```

**See**

- `append` — add to the end
- `prependAll` — prepend multiple elements

**Signature**

```ts
declare const prepend: { <B>(head: B): <A>(self: Iterable<A>) => NonEmptyArray<A | B>; <A, B>(self: Iterable<A>, head: B): NonEmptyArray<A | B>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Array.ts#L571)

Since v2.0.0