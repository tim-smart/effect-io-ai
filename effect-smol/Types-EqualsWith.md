Package: `effect`<br />
Module: `Types`<br />

## Types.EqualsWith

Determines if two types are equal, returning custom types for each case.

- Use when you need a type-level if/else based on type equality.
- Returns `Y` when `A` and `B` are equal, `N` otherwise.

**Example** (Conditional type based on equality)

```ts
import type { Types } from "effect"

type R1 = Types.EqualsWith<string, string, "same", "diff"> // "same"
type R2 = Types.EqualsWith<string, number, "same", "diff"> // "diff"
```

**See**

- `Equals`

**Signature**

```ts
type EqualsWith<A, B, Y, N> = (<T>() => T extends A ? 1 : 2) extends (<T>() => T extends B ? 1 : 2) ? Y : N
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Types.ts#L317)

Since v3.15.0