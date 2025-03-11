## when

Defines a condition for matching values.

**Details**

This function enables pattern matching by checking whether a given value
satisfies a condition. It supports both direct value comparisons and
predicate functions. If the condition is met, the associated function is
executed.

This function is useful when defining matchers that need to check for
specific values or apply logical conditions to determine a match. It works
well with structured objects and primitive types.

**Example**

```ts
// Title: Matching with Values and Predicates
import { Match } from "effect"

// Create a matcher for objects with an "age" property
const match = Match.type<{ age: number }>().pipe(
  // Match when age is greater than 18
  Match.when({ age: (age) => age > 18 }, (user) => `Age: ${user.age}`),
  // Match when age is exactly 18
  Match.when({ age: 18 }, () => "You can vote"),
  // Fallback case for all other ages
  Match.orElse((user) => `${user.age} is too young`)
)

console.log(match({ age: 20 }))
// Output: "Age: 20"

console.log(match({ age: 18 }))
// Output: "You can vote"

console.log(match({ age: 4 }))
// Output: "4 is too young"
```

**See**

- `whenOr` Use this when multiple patterns should match in a single
condition.
- `whenAnd` Use this when a value must match all provided patterns.
- `orElse` Provides a fallback when no patterns match.

**Signature**

```ts
declare const when: <R, const P extends Types.PatternPrimitive<R> | Types.PatternBase<R>, Ret, Fn extends (_: Types.WhenMatch<R, P>) => Ret>(pattern: P, f: Fn) => <I, F, A, Pr>(self: Matcher<I, F, R, A, Pr, Ret>) => Matcher<I, Types.AddWithout<F, Types.PForExclude<P>>, Types.ApplyFilters<I, Types.AddWithout<F, Types.PForExclude<P>>>, A | ReturnType<Fn>, Pr, Ret>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Match.ts#L351)

Since v1.0.0