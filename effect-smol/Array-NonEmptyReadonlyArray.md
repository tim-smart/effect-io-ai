Package: `effect`<br />
Module: `Array`<br />

## Array.NonEmptyReadonlyArray

A readonly array guaranteed to have at least one element.

Use this type when you need to ensure non-emptiness at the type level while
preventing mutation. Many Array module functions accept or return this type.

**Example** (Typing a non-empty array)

```ts
import type { Array } from "effect"

const nonEmpty: Array.NonEmptyReadonlyArray<number> = [1, 2, 3]
const head: number = nonEmpty[0] // guaranteed to exist
```

**See**

- `NonEmptyArray` — mutable counterpart
- `isReadonlyArrayNonEmpty` — narrow a `ReadonlyArray` to this type

**Signature**

```ts
type readonly [A, ...A[]] = readonly [A, ...Array<A>]
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Array.ts#L155)

Since v2.0.0