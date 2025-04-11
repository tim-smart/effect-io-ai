Package: `effect`<br />
Module: `Match`<br />

## Match.whenAnd

Matches a value that satisfies all provided patterns.

**Details**

This function allows defining a condition where a value must match all the
given patterns simultaneously. If the value satisfies every pattern, the
associated function is executed.

Unlike `when`, which matches a single pattern at a time, this function
ensures that multiple conditions are met before executing the callback. It is
useful when checking for values that need to fulfill multiple criteria at
once.

**Example**

```ts
import { Match } from "effect"

type User = { readonly age: number; readonly role: "admin" | "user" }

const checkUser = Match.type<User>().pipe(
  Match.whenAnd(
    { age: (n) => n >= 18 },
    { role: "admin" },
    () => "Admin access granted"
  ),
  Match.orElse(() => "Access denied")
)

console.log(checkUser({ age: 20, role: "admin" }))
// Output: "Admin access granted"

console.log(checkUser({ age: 20, role: "user" }))
// Output: "Access denied"
```

**Signature**

```ts
declare const whenAnd: <R, const P extends ReadonlyArray<Types.PatternPrimitive<R> | Types.PatternBase<R>>, Ret, Fn extends (_: Types.WhenMatch<R, T.UnionToIntersection<P[number]>>) => Ret>(...args: [...patterns: P, f: Fn]) => <I, F, A, Pr>(self: Matcher<I, F, R, A, Pr, Ret>) => Matcher<I, Types.AddWithout<F, Types.PForExclude<T.UnionToIntersection<P[number]>>>, Types.ApplyFilters<I, Types.AddWithout<F, Types.PForExclude<T.UnionToIntersection<P[number]>>>>, A | ReturnType<Fn>, Pr>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Match.ts#L473)

Since v1.0.0