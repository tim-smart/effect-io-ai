Package: `effect`<br />
Module: `Match`<br />

## Match.either

Wraps the match result in an `Either`, distinguishing matched and unmatched
cases.

**Details**

This function ensures that the result of a matcher is always wrapped in an
`Either`, allowing clear differentiation between successful matches
(`Right(value)`) and cases where no pattern matched (`Left(unmatched
value)`).

This approach is particularly useful when handling optional values or when an
unmatched case should be explicitly handled rather than returning a default
value or throwing an error.

**Example** (Extracting a User Role with `Match.either`)

```ts
import { Match } from "effect"

type User = { readonly role: "admin" | "editor" | "viewer" }

// Create a matcher to extract user roles
const getRole = Match.type<User>().pipe(
  Match.when({ role: "admin" }, () => "Has full access"),
  Match.when({ role: "editor" }, () => "Can edit content"),
  Match.either // Wrap the result in an Either
)

console.log(getRole({ role: "admin" }))
// Output: { _id: 'Either', _tag: 'Right', right: 'Has full access' }

console.log(getRole({ role: "viewer" }))
// Output: { _id: 'Either', _tag: 'Left', left: { role: 'viewer' } }
```

**Signature**

```ts
declare const either: <I, F, R, A, Pr, Ret>(self: Matcher<I, F, R, A, Pr, Ret>) => [Pr] extends [never] ? (input: I) => Either.Either<Unify<A>, R> : Either.Either<Unify<A>, R>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Match.ts#L1172)

Since v1.0.0