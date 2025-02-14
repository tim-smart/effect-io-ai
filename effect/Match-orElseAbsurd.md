# orElseAbsurd

Throws an error if no pattern matches.

**Details**

This function finalizes a matcher by ensuring that if no patterns match, an
error is thrown. It is useful when all cases should be covered, and any
unexpected input should trigger an error instead of returning a default
value.

When used, this function removes the need for an explicit fallback case and
ensures that an unmatched value is never silently ignored.

To import and use `orElseAbsurd` from the "Match" module:

```ts
import * as Match from "effect/Match"
// Can be accessed like this
Match.orElseAbsurd
```

**Signature**

```ts
export declare const orElseAbsurd: <I, R, RA, A, Pr, Ret>(
  self: Matcher<I, R, RA, A, Pr, Ret>
) => [Pr] extends [never] ? (input: I) => Unify<A> : Unify<A>
```
