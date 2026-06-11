Package: `effect`<br />
Module: `Match`<br />

## Match.exhaustive

Completes a matcher that handles every remaining input case.

**When to use**

Use to require TypeScript to reject incomplete matcher definitions before the
matcher is turned into a function.

**Details**

If any case is still unmatched, the matcher does not type-check as
exhaustive.

**Example** (Ensuring All Cases Are Covered)

```ts
import { Match } from "effect"

// Create a matcher for string or number values
const match = Match.type<string | number>().pipe(
  // Match when the value is a number
  Match.when(Match.number, (n) => `number: ${n}`),
  // Mark the match as exhaustive, ensuring all cases are handled
  // TypeScript will throw an error if any case is missing
  // @ts-expect-error Type 'string' is not assignable to type 'never'
  Match.exhaustive
)
```

**Signature**

```ts
declare const exhaustive: <I, F, A, Pr, Ret>(self: Matcher<I, F, never, A, Pr, Ret>) => [Pr] extends [never] ? (u: I) => Unify<A> : Unify<A>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Match.ts#L2003)

Since v4.0.0