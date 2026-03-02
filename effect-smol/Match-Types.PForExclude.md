Package: `effect`<br />
Module: `Match`<br />

## Match.Types.PForExclude

Computes the excluded type when a pattern P is used for exclusion.

This utility type determines what should be excluded from a union type
when a pattern is used in filtering operations. It transforms patterns
into their exclusion-safe representations.

**Example**

```ts
import type { Match } from "effect"

// PForExclude computes what to exclude from type operations
type ExcludeString = Match.Types.PForExclude<typeof Match.string>
// Used internally to filter out string types

type ExcludeObject = Match.Types.PForExclude<{ type: "admin" }>
// Used internally to filter out admin objects
```

**Signature**

```ts
type PForExclude<P> = [SafeRefinementR<ToSafeRefinement<P>>] extends [infer X] ? X
    : never
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Match.ts#L2001)

Since v4.0.0