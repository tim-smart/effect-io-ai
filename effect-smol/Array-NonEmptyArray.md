Package: `effect`<br />
Module: `Array`<br />

## Array.NonEmptyArray

A mutable array guaranteed to have at least one element.

This is the mutable counterpart of `NonEmptyReadonlyArray`. Most Array
module functions return `NonEmptyArray` when the result is guaranteed
non-empty.

**Example** (Typing a mutable non-empty array)

```ts
import type { Array } from "effect"

const nonEmpty: Array.NonEmptyArray<number> = [1, 2, 3]
nonEmpty.push(4)
```

**See**

- `NonEmptyReadonlyArray` — readonly counterpart
- `isArrayNonEmpty` — narrow an `Array` to this type

**Signature**

```ts
type [A, ...A[]] = [A, ...Array<A>]
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Array.ts#L178)

Since v2.0.0