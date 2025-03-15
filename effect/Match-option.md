Package: `effect`<br />
Module: `Match`<br />

## Match.option

Wraps the match result in an `Option`, representing an optional match.

**Details**

This function ensures that the result of a matcher is wrapped in an `Option`,
making it easy to handle cases where no pattern matches. If a match is found,
it returns `Some(value)`, otherwise, it returns `None`.

This is useful in cases where a missing match is expected and should be
handled explicitly rather than throwing an error or returning a default
value.

**Example** (Extracting a User Role with `Match.option`)

```ts
import { Match } from "effect"

type User = { readonly role: "admin" | "editor" | "viewer" }

// Create a matcher to extract user roles
const getRole = Match.type<User>().pipe(
  Match.when({ role: "admin" }, () => "Has full access"),
  Match.when({ role: "editor" }, () => "Can edit content"),
  Match.option // Wrap the result in an Option
)

console.log(getRole({ role: "admin" }))
// Output: { _id: 'Option', _tag: 'Some', value: 'Has full access' }

console.log(getRole({ role: "viewer" }))
// Output: { _id: 'Option', _tag: 'None' }
```

**Signature**

```ts
declare const option: <I, F, R, A, Pr, Ret>(self: Matcher<I, F, R, A, Pr, Ret>) => [Pr] extends [never] ? (input: I) => Option.Option<Unify<A>> : Option.Option<Unify<A>>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Match.ts#L1198)

Since v1.0.0