# exhaustive

The `Match.exhaustive` method finalizes the pattern matching process by
ensuring that all possible cases are accounted for. If any case is missing,
TypeScript will produce a type error. This is particularly useful when
working with unions, as it helps prevent unintended gaps in pattern matching.

To import and use `exhaustive` from the "Match" module:

```ts
import * as Match from "effect/Match"
// Can be accessed like this
Match.exhaustive
```

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
export declare const exhaustive: <I, F, A, Pr, Ret>(
  self: Matcher<I, F, never, A, Pr, Ret>
) => [Pr] extends [never] ? (u: I) => Unify<A> : Unify<A>
```
