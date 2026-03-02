Package: `effect`<br />
Module: `Effect`<br />

## Effect.result

Encapsulates both success and failure of an `Effect` into a `Result` type.

**Details**

This function converts an effect that may fail into an effect that always
succeeds, wrapping the outcome in a `Result` type. The result will be
`Result.Err` if the effect fails, containing the recoverable error, or
`Result.Ok` if it succeeds, containing the result.

Using this function, you can handle recoverable errors explicitly without
causing the effect to fail. This is particularly useful in scenarios where
you want to chain effects and manage both success and failure in the same
logical flow.

It's important to note that unrecoverable errors, often referred to as
"defects," are still thrown and not captured within the `Result` type. Only
failures that are explicitly represented as recoverable errors in the effect
are encapsulated.

The resulting effect cannot fail directly because all recoverable failures
are represented inside the `Result` type.

**Previously Known As**

This API replaces the following from Effect 3.x:

- `Effect.either`

**Example**

```ts
import { Effect } from "effect"

const success = Effect.succeed(42)
const failure = Effect.fail("Something went wrong")

const program1 = Effect.result(success)
const program2 = Effect.result(failure)

Effect.runPromise(program1).then(console.log)
// { _id: 'Result', _tag: 'Success', value: 42 }

Effect.runPromise(program2).then(console.log)
// { _id: 'Result', _tag: 'Failure', error: 'Something went wrong' }
```

**See**

- `option` for a version that uses `Option` instead.
- `exit` for a version that encapsulates both recoverable errors and defects in an `Exit`.

**Signature**

```ts
declare const result: <A, E, R>(self: Effect<A, E, R>) => Effect<Result.Result<A, E>, never, R>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Effect.ts#L2302)

Since v4.0.0