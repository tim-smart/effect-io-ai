Package: `effect`<br />
Module: `Array`<br />

## Array.headNonEmpty

Returns the first element of a `NonEmptyReadonlyArray` directly (no `Option`
wrapper).

**When to use**

Use to get the first element without `Option` wrapping when the array is known
to be non-empty.

**Example** (Getting the head of a non-empty array)

```ts
import { Array } from "effect"

console.log(Array.headNonEmpty([1, 2, 3, 4])) // 1
```

**See**

- `head` — safe version for possibly-empty arrays

**Signature**

```ts
declare const headNonEmpty: <A>(self: NonEmptyReadonlyArray<A>) => A
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Array.ts#L1184)

Since v2.0.0