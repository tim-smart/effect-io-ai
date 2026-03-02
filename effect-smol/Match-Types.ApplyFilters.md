Package: `effect`<br />
Module: `Match`<br />

## Match.Types.ApplyFilters

Applies accumulated filters to an input type, producing the final narrowed type.

This utility type takes the collected inclusion/exclusion filters and
applies them to the input type to compute the final narrowed result.
It's the culmination of the type-level filtering process.

**Example**

```ts
import type { Match } from "effect"

// ApplyFilters computes the final narrowed type:
type Result = Match.Types.ApplyFilters<
  string | number | boolean,
  Match.Types.Only<string>
>
// Result: string

type ExclusionResult = Match.Types.ApplyFilters<
  string | number | boolean,
  Match.Types.Without<string>
>
// Result: number | boolean
```

**Signature**

```ts
type ApplyFilters<I, A> = A extends Only<infer X> ? X
    : A extends Without<infer X> ? Exclude<I, X>
    : never
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Match.ts#L2247)

Since v4.0.0