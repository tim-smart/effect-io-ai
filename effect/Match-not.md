# not

Excludes a specific value from matching while allowing all others.

**Details**

This function is useful when you need to **handle all values except one or
more specific cases**. Instead of listing all possible matches manually, this
function simplifies the logic by allowing you to specify values to exclude.
Any excluded value will bypass the provided function and continue matching
through other cases.

To import and use `not` from the "Match" module:

```ts
import * as Match from "effect/Match"
// Can be accessed like this
Match.not
```

**Example**

```ts
// Title: Ignoring a Specific Value
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

**Signature**

```ts
export declare const not: <
  R,
  const P extends Types.PatternPrimitive<R> | Types.PatternBase<R>,
  Ret,
  Fn extends (_: Exclude<R, Types.ExtractMatch<R, Types.PForExclude<P>>>) => Ret
>(
  pattern: P,
  f: Fn
) => <I, F, A, Pr>(
  self: Matcher<I, F, R, A, Pr, Ret>
) => Matcher<
  I,
  Types.AddOnly<F, Types.WhenMatch<R, P>>,
  Types.ApplyFilters<I, Types.AddOnly<F, Types.WhenMatch<R, P>>>,
  A | ReturnType<Fn>,
  Pr,
  Ret
>
```
