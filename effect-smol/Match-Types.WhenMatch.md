Package: `effect`<br />
Module: `Match`<br />

## Match.Types.WhenMatch

Computes the matched type when a pattern P is applied to type R.

This utility type determines what type a value will have after successfully
matching against a pattern. It handles refinements, predicates, and complex
object patterns to provide accurate type narrowing.

**Example**

```ts
import type { Match } from "effect"

// WhenMatch computes the narrowed type after pattern matching
type StringMatch = Match.Types.WhenMatch<string | number, typeof Match.string>
// Result: string

type ObjectMatch = Match.Types.WhenMatch<
  { type: "user"; name: string } | {
    type: "admin"
    permissions: Array<string>
  },
  { type: "user" }
>
// Result: { type: "user"; name: string }
```

**Signature**

```ts
type WhenMatch<R, P> = [0] extends [1 & R] ? ResolvePred<P> :
      P extends SafeRefinement<infer SP, never> ? SP
      : P extends Predicate.Refinement<infer _R, infer RP>
      // try to narrow refinement
        ? [Extract<R, RP>] extends [infer X] ? [X] extends [never]
            // fallback to original refinement
            ? RP
          : X
        : never
      : P extends PredicateA<infer PP> ? PP
      : ExtractMatch<R, P>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Match.ts#L1910)

Since v4.0.0