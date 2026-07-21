Package: `effect`<br />
Module: `Effect`<br />

## Effect.result

Converts both success and failure of an `Effect` into a `Result` type.

**When to use**

Use when you want an `Effect`'s typed failures to be handled as `Result`
data while preserving the original error value.

**Details**

This function converts an effect that may fail into an effect that always
succeeds, wrapping the outcome in a `Result` type. The result will be
`Result.Failure` if the effect fails, containing the recoverable error, or
`Result.Success` if it succeeds, containing the result.

Using this function, you can handle recoverable errors explicitly without
causing the effect to fail. This is particularly useful in scenarios where
you want to chain effects and manage both success and failure in the same
logical flow.

The resulting effect cannot fail directly because all recoverable failures
are represented inside the `Result` type.

**Gotchas**

`result` only captures typed, recoverable failures. Defects and
interruptions are not captured inside the `Result` and still fail the
effect.

**Example** (Capturing success or failure as Result)

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

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Effect.ts#L2257)

Since v4.0.0