Package: `effect`<br />
Module: `Match`<br />

## Match.whenOr

Matches one of multiple patterns in a single condition.

**Details**

This function allows defining a condition where a value matches any of the
provided patterns. If a match is found, the associated function is executed.
It simplifies cases where multiple patterns share the same handling logic.

Unlike `when`, which requires separate conditions for each pattern,
this function enables combining them into a single statement, making the
matcher more concise.

**Example**

```ts
import { Match } from "effect"

type ErrorType =
  | { readonly _tag: "NetworkError"; readonly message: string }
  | { readonly _tag: "TimeoutError"; readonly duration: number }
  | { readonly _tag: "ValidationError"; readonly field: string }

const handleError = Match.type<ErrorType>().pipe(
  Match.whenOr(
    { _tag: "NetworkError" },
    { _tag: "TimeoutError" },
    () => "Retry the request"
  ),
  Match.when({ _tag: "ValidationError" }, (_) => `Invalid field: ${_.field}`),
  Match.exhaustive
)

console.log(handleError({ _tag: "NetworkError", message: "No connection" }))
// Output: "Retry the request"

console.log(handleError({ _tag: "ValidationError", field: "email" }))
// Output: "Invalid field: email"
```

**Signature**

```ts
declare const whenOr: <R, const P extends ReadonlyArray<Types.PatternPrimitive<R> | Types.PatternBase<R>>, Ret, Fn extends (_: Types.WhenMatch<R, P[number]>) => Ret>(...args: [...patterns: P, f: Fn]) => <I, F, A, Pr>(self: Matcher<I, F, R, A, Pr, Ret>) => Matcher<I, Types.AddWithout<F, Types.PForExclude<P[number]>>, Types.ApplyFilters<I, Types.AddWithout<F, Types.PForExclude<P[number]>>>, A | ReturnType<Fn>, Pr, Ret>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Match.ts#L412)

Since v1.0.0