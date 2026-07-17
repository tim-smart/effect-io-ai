Package: `effect`<br />
Module: `Match`<br />

## Match.orElseAbsurd

Returns a matcher that throws an error if no pattern matches.

**When to use**

Use to finalize a matcher when every remaining unmatched case should be
impossible.

**Details**

This function finalizes a matcher by ensuring that if no patterns match, an
error is thrown. It is useful when all cases should be covered, and any
unexpected input should trigger an error instead of returning a default
value.

When used, this function removes the need for an explicit fallback case and
ensures that an unmatched value is never silently ignored.

**Example** (Throwing on unmatched input)

```ts
import { Match } from "effect"

const strictMatcher = Match.type<"a" | "b">().pipe(
  Match.when("a", () => "Found A"),
  Match.when("b", () => "Found B"),
  // Will throw if input is neither "a" nor "b"
  Match.orElseAbsurd
)

console.log(strictMatcher("a")) // "Found A"
console.log(strictMatcher("b")) // "Found B"

// This would throw an error at runtime:
// strictMatcher("c" as any) // throws
```

**See**

- `exhaustive` for compile-time exhaustive matcher finalization
- `orElse` for providing a fallback for unmatched input

**Signature**

```ts
declare const orElseAbsurd: <I, R, RA, A, Pr, Ret>(self: Matcher<I, R, RA, A, Pr, Ret>) => [Pr] extends [never] ? (input: I) => Unify<A> : Unify<A>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Match.ts#L1875)

Since v4.0.0