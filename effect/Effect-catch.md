# catch

Recovers from a specified error by catching it and handling it with a provided function.

**Details**

This function allows you to recover from specific errors that occur during
the execution of an effect. It works by catching a specific type of error
(identified by a discriminator) and then handling it using a provided
handler function. The handler can return a new effect that helps recover
from the error, allowing the program to continue. If the error doesn't
match the specified type, the function allows the original effect to
continue as it was.

To import and use `catch` from the "Effect" module:

```ts
import * as Effect from "effect/Effect"
// Can be accessed like this
Effect.catch
```

**Example**

```ts
import { Console, Effect } from "effect"

class NetworkError {
  readonly _tag = "NetworkError"
}
class ValidationError {
  readonly _tag = "ValidationError"
}

// Simulate an effect that may fail
const task: Effect.Effect<never, NetworkError | ValidationError, never> = Effect.fail(new NetworkError())

const program = Effect.gen(function* () {
  const result = yield* Effect.catch(task, "_tag", {
    failure: "NetworkError",
    onFailure: (error) => Effect.succeed(`recovered from error: ${error._tag}`)
  })
  console.log(`Result: ${result}`)
})

Effect.runFork(program)
// Output: Result: recovered from error: NetworkError
```
