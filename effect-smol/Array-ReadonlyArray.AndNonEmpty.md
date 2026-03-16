Package: `effect`<br />
Module: `Array`<br />

## Array.ReadonlyArray.AndNonEmpty

Creates a non-empty array only if both inputs are non-empty.

**Example**

```ts
import type { Array } from "effect"

type Result = Array.ReadonlyArray.AndNonEmpty<
  readonly [number],
  readonly [string],
  boolean
>
// Result is NonEmptyArray<boolean>
```

**Signature**

```ts
type AndNonEmpty<S, T, A> = S extends NonEmptyReadonlyArray<any> ? T extends NonEmptyReadonlyArray<any> ? NonEmptyArray<A>
    : Array<A>
    : Array<A>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Array.ts#L3026)

Since v2.0.0