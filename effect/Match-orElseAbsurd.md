Package: `effect`<br />
Module: `Match`<br />

## Match.orElseAbsurd

Throws an error if no pattern matches.

**Details**

This function finalizes a matcher by ensuring that if no patterns match, an
error is thrown. It is useful when all cases should be covered, and any
unexpected input should trigger an error instead of returning a default
value.

When used, this function removes the need for an explicit fallback case and
ensures that an unmatched value is never silently ignored.

**Signature**

```ts
declare const orElseAbsurd: <I, R, RA, A, Pr, Ret>(self: Matcher<I, R, RA, A, Pr, Ret>) => [Pr] extends [never] ? (input: I) => Unify<A> : Unify<A>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Match.ts#L1129)

Since v1.0.0