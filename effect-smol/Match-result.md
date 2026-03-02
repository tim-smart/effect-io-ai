Package: `effect`<br />
Module: `Match`<br />

## Match.result

Wraps the match result in a `Result`, distinguishing matched and unmatched
cases.

**Details**

This function ensures that the result of a matcher is always wrapped in an
`Result`, allowing clear differentiation between successful matches
(`Ok(value)`) and cases where no pattern matched (`Err(unmatched
value)`).

This approach is particularly useful when handling optional values or when an
unmatched case should be explicitly handled rather than returning a default
value or throwing an error.

**Example**

```ts
(Extracting a User Role with `Match.result`)

```ts
import { Match } from "effect"

type User = { readonly role: "admin" | "editor" | "viewer" }

// Create a matcher to extract user roles
const getRole = Match.type<User>().pipe(
  Match.when({ role: "admin" }, () => "Has full access"),
  Match.when({ role: "editor" }, () => "Can edit content"),
  Match.result // Wrap the result in an Result
)

console.log(getRole({ role: "admin" }))
// Output: { _id: 'Result', _tag: 'Ok', ok: 'Has full access' }

console.log(getRole({ role: "viewer" }))
// Output: { _id: 'Result', _tag: 'Err', err: { role: 'viewer' } }
```
```

**Signature**

```ts
declare const result: <I, F, R, A, Pr, Ret>(self: Matcher<I, F, R, A, Pr, Ret>) => [Pr] extends [never] ? (input: I) => Result.Result<Unify<A>, R> : Result.Result<Unify<A>, R>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Match.ts#L1743)

Since v4.0.0