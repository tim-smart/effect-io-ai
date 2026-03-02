Package: `effect`<br />
Module: `Match`<br />

## Match.Types.NotMatch

Computes the remaining type when a pattern P is excluded from type R.

This utility type determines what type remains after a `Match.not` pattern
excludes certain values. It's the complement of `WhenMatch`, calculating
what's left after removing the matched portion.

**Example**

```ts
import type { Match } from "effect"

// NotMatch computes what remains after exclusion
type NotString = Match.Types.NotMatch<
  string | number | boolean,
  typeof Match.string
>
// Result: number | boolean

type NotSpecificValue = Match.Types.NotMatch<"a" | "b" | "c", "a">
// Result: "b" | "c"
```

**Signature**

```ts
type NotMatch<R, P> = Exclude<R, ExtractMatch<R, PForNotMatch<P>>>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Match.ts#L1949)

Since v4.0.0