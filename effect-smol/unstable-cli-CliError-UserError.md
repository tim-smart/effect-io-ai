Package: `effect`<br />
Module: `CliError`<br />

## CliError.UserError

Wrapper for user (handler) errors to unify under CLI error channel when desired.

**Example**

```ts
import { Effect } from "effect"
import { CliError } from "effect/unstable/cli"

// Wrapping user errors
const userError = new CliError.UserError({
  cause: new Error("Database connection failed")
})

// In command handler
const deployCommand = Effect.gen(function*() {
  const result = yield* Effect.try({
    try: () => ({ deployed: true }),
    catch: (error) => new CliError.UserError({ cause: error })
  })
  return result
})

// In error handling
const handleError = (error: CliError.CliError): Effect.Effect<number> => {
  if (error._tag === "UserError") {
    console.log("Command failed:", error.cause)
    return Effect.succeed(1) // Exit code 1
  }
  return Effect.succeed(0)
}
```

**Signature**

```ts
declare class UserError
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/CliError.ts#L479)

Since v4.0.0