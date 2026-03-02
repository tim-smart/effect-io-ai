Package: `effect`<br />
Module: `Match`<br />

## Match.Types.PForMatch

Resolves a pattern to its matched type for use in type computations.

This utility type processes patterns (predicates, refinements, objects)
and resolves them to their corresponding matched types. It's used internally
to compute type transformations during pattern matching.

**Example**

```ts
import type { Match } from "effect"

// PForMatch resolves patterns to their matched types
type StringPattern = Match.Types.PForMatch<typeof Match.string>
// Result: string

type ObjectPattern = Match.Types.PForMatch<{ name: string }>
// Result: { name: string }
```

**Signature**

```ts
type PForMatch<P> = [ResolvePred<P>] extends [infer X] ? X
    : never
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Match.ts#L1976)

Since v4.0.0