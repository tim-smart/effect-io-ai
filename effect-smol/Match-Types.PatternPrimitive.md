Package: `effect`<br />
Module: `Match`<br />

## Match.Types.PatternPrimitive

Defines primitive patterns that can match simple values.

This type represents the building blocks of pattern matching: predicates,
literal values, and safe refinements. These are the atomic patterns that
can be composed into more complex matching logic.

**Example**

```ts
import { Match } from "effect"

// PatternPrimitive includes various pattern types:

// Literal values
Match.when("exact", () => "matched exact")
Match.when(42, () => "matched number")

// Predicates
Match.when(Match.string, (s) => `string: ${s}`)
Match.when((x: number) => x > 10, (n: number) => `large number: ${n}`)

// Custom refinements
Match.when(Match.defined, (value) => `defined: ${value}`)
```

**Signature**

```ts
type PatternPrimitive<A> = PredicateA<A> | A | SafeRefinement<any>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Match.ts#L2108)

Since v4.0.0