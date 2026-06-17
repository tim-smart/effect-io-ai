Package: `effect`<br />
Module: `Match`<br />

## Match.when

Defines a condition for matching values.

**When to use**

Use to add one positive pattern case to a `Match.type` or `Match.value`
pipeline when a direct value, predicate, or structured object pattern should
run a handler for matching input.

**Details**

Supports both direct value comparisons and predicate functions. If the
pattern matches, the associated function is executed and the matched input is
removed from the remaining cases tracked by the matcher.

**Example** (Matching with values and predicates)

```ts
import { Match } from "effect"

// Create a matcher for objects with an "age" property
const match = Match.type<{ age: number }>().pipe(
  // Match when age is greater than 18
  Match.when(
    { age: (age: number) => age > 18 },
    (user: { age: number }) => `Age: ${user.age}`
  ),
  // Match when age is exactly 18
  Match.when({ age: 18 }, () => "You can vote"),
  // Fallback case for all other ages
  Match.orElse((user: { age: number }) => `${user.age} is too young`)
)

console.log(match({ age: 20 }))
// Output: "Age: 20"

console.log(match({ age: 18 }))
// Output: "You can vote"

console.log(match({ age: 4 }))
// Output: "4 is too young"
```

**See**

- `whenOr` for handling any one of several patterns with the same handler
- `whenAnd` for requiring all provided patterns to match before running a handler
- `not` for handling inputs that do not match a pattern
- `orElse` for providing a fallback when no pattern case matches

**Signature**

```ts
declare const when: <R, const P extends Types.PatternPrimitive<R> | Types.PatternBase<R>, Ret, Fn extends (_: Types.WhenMatch<R, P>) => Ret>(pattern: P, f: Fn) => <I, F, A, Pr>(self: Matcher<I, F, R, A, Pr, Ret>) => Matcher<I, Types.AddWithout<F, Types.PForExclude<P>>, Types.ApplyFilters<I, Types.AddWithout<F, Types.PForExclude<P>>>, A | ReturnType<Fn>, Pr, Ret>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Match.ts#L530)

Since v4.0.0