Package: `effect`<br />
Module: `Array`<br />

## Array.copy

Creates a shallow copy of an array.

- Preserves `NonEmptyArray` in the return type.
- Useful when you need a distinct reference (e.g. before mutating).

**Example** (Copying an array)

```ts
import { Array } from "effect"

const original = [1, 2, 3]
const copied = Array.copy(original)
console.log(copied) // [1, 2, 3]
console.log(original === copied) // false
```

**See**

- `fromIterable` — returns the same reference for arrays

**Signature**

```ts
declare const copy: { <A>(self: NonEmptyReadonlyArray<A>): NonEmptyArray<A>; <A>(self: ReadonlyArray<A>): Array<A>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Array.ts#L2466)

Since v2.0.0