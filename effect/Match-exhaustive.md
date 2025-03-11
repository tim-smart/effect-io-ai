## exhaustive

The `Match.exhaustive` method finalizes the pattern matching process by
ensuring that all possible cases are accounted for. If any case is missing,
TypeScript will produce a type error. This is particularly useful when
working with unions, as it helps prevent unintended gaps in pattern matching.

**Example**

```ts
// Title: Ensuring All Cases Are Covered
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

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Match.ts#L1227)

Since v1.0.0