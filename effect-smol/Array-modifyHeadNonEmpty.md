Package: `effect`<br />
Module: `Array`<br />

## Array.modifyHeadNonEmpty

Applies a function to the first element of a non-empty array, returning a
new array.

**Example** (Modifying the head)

```ts
import { Array } from "effect"

console.log(Array.modifyHeadNonEmpty([1, 2, 3], (n) => n * 10)) // [10, 2, 3]
```

**See**

- `setHeadNonEmpty` — replace with a fixed value
- `modifyLastNonEmpty` — modify the last element

**Signature**

```ts
declare const modifyHeadNonEmpty: { <A, B>(f: (a: A) => B): (self: NonEmptyReadonlyArray<A>) => NonEmptyArray<A | B>; <A, B>(self: NonEmptyReadonlyArray<A>, f: (a: A) => B): NonEmptyArray<A | B>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Array.ts#L2087)

Since v2.0.0