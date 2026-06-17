Package: `effect`<br />
Module: `Match`<br />

## Match.not

Creates a pattern that excludes a specific value while allowing all others.

**When to use**

Use to add a negative pattern case for inputs that should match when another
pattern does not.

**Details**

Any excluded value bypasses the provided function and continues matching
through later cases.

**Example** (Ignoring a specific value)

```ts
import { Match } from "effect"

// Create a matcher for string or number values
const match = Match.type<string | number>().pipe(
  // Match any value except "hi", returning "ok"
  Match.not("hi", () => "ok"),
  // Fallback case for when the value is "hi"
  Match.orElse(() => "fallback")
)

console.log(match("hello"))
// Output: "ok"

console.log(match("hi"))
// Output: "fallback"
```

**See**

- `when` for adding a positive pattern case

**Signature**

```ts
declare const not: <R, const P extends Types.PatternPrimitive<R> | Types.PatternBase<R>, Ret, Fn extends (_: Types.NotMatch<R, P>) => Ret>(pattern: P, f: Fn) => <I, F, A, Pr>(self: Matcher<I, F, R, A, Pr, Ret>) => Matcher<I, Types.AddOnly<F, Types.WhenMatch<R, P>>, Types.ApplyFilters<I, Types.AddOnly<F, Types.WhenMatch<R, P>>>, A | ReturnType<Fn>, Pr, Ret>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Match.ts#L1146)

Since v4.0.0