Package: `effect`<br />
Module: `Match`<br />

## Match.ValueMatcher

Represents a pattern matcher that operates on a specific provided value.

A `ValueMatcher` is created when using `Match.value(someValue)` and contains
the actual value to be matched against. It tracks both the provided value
and the result of applying patterns to determine matches.

**Example**

```ts
import { Match } from "effect"

const input = { type: "user", name: "Alice", age: 30 }

// Create a ValueMatcher for the specific input
const result = Match.value(input).pipe(
  Match.when({ type: "user" }, (user) => `User: ${user.name}`),
  Match.when({ type: "admin" }, (admin) => `Admin: ${admin.name}`),
  Match.orElse(() => "Unknown type")
)

console.log(result) // "User: Alice"
```

**Signature**

```ts
export interface ValueMatcher<in Input, Filters, out Remaining, out Result, Provided, out Return = any>
  extends Pipeable
{
  readonly _tag: "ValueMatcher"
  readonly [TypeId]: {
    readonly _input: T.Contravariant<Input>
    readonly _filters: T.Covariant<Filters>
    readonly _result: T.Covariant<Result>
    readonly _return: T.Covariant<Return>
  }
  readonly provided: Provided
  readonly value: Result.Result<Provided, Remaining>
  add<I, R, RA, A, Pr>(_case: Case): ValueMatcher<I, R, RA, A, Pr>
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Match.ts#L146)

Since v4.0.0