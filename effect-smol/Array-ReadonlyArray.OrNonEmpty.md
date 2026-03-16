Package: `effect`<br />
Module: `Array`<br />

## Array.ReadonlyArray.OrNonEmpty

Creates a non-empty array if either input is non-empty.

**Example**

```ts
import type { Array } from "effect"

type Result = Array.ReadonlyArray.OrNonEmpty<
  readonly [number],
  ReadonlyArray<string>,
  number
>
// Result is NonEmptyArray<number>
```

**Signature**

```ts
type OrNonEmpty<S, T, A> = S extends NonEmptyReadonlyArray<any> ? NonEmptyArray<A>
    : T extends NonEmptyReadonlyArray<any> ? NonEmptyArray<A>
    : Array<A>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Array.ts#L3000)

Since v2.0.0