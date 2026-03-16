Package: `effect`<br />
Module: `Array`<br />

## Array.modifyLastNonEmpty

Applies a function to the last element of a non-empty array, returning a
new array.

**Example** (Modifying the last element)

```ts
import { Array } from "effect"

console.log(Array.modifyLastNonEmpty([1, 2, 3], (n) => n * 2)) // [1, 2, 6]
```

**See**

- `setLastNonEmpty` — replace with a fixed value
- `modifyHeadNonEmpty` — modify the first element

**Signature**

```ts
declare const modifyLastNonEmpty: { <A, B>(f: (a: A) => B): (self: NonEmptyReadonlyArray<A>) => NonEmptyArray<A | B>; <A, B>(self: NonEmptyReadonlyArray<A>, f: (a: A) => B): NonEmptyArray<A | B>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Array.ts#L2141)

Since v2.0.0