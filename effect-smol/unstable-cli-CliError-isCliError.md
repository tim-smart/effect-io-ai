Package: `effect`<br />
Module: `CliError`<br />

## CliError.isCliError

Type guard to check if a value is a CLI error.

**Example**

```ts
import { Effect } from "effect"
import { CliError } from "effect/unstable/cli"

const handleError = (error: unknown) => {
  if (CliError.isCliError(error)) {
    console.log("CLI Error:", error.message)
    return Effect.succeed("Handled CLI error")
  }
  return Effect.fail("Unknown error")
}

// Example usage in error handling
const program = Effect.gen(function*() {
  const result = yield* Effect.try({
    try: () => ({ success: true }),
    catch: (error) => error
  })
  handleError(result)
})
```

**Signature**

```ts
declare const isCliError: (u: unknown) => u is CliError
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/CliError.ts#L42)

Since v4.0.0