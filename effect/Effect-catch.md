Package: `effect`<br />
Module: `Effect`<br />

## Effect.catch

Recovers from a specified error by catching it and handling it with a provided function.

**Details**

This function allows you to recover from specific errors that occur during
the execution of an effect. It works by catching a specific type of error
(identified by a discriminator) and then handling it using a provided
handler function. The handler can return a new effect that helps recover
from the error, allowing the program to continue. If the error doesn't
match the specified type, the function allows the original effect to
continue as it was.

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

const program = Effect.gen(function*() {
  const result = yield* Effect.catch(task, "_tag", {
    failure: "NetworkError",
    onFailure: (error) => Effect.succeed(`recovered from error: ${error._tag}`)
  })
  console.log(`Result: ${result}`)
})

Effect.runFork(program)
// Output: Result: recovered from error: NetworkError
```

**See**

- `catchTag` for a version that can recover from errors based on a `_tag` discriminator.

**Signature**

```ts
declare const catch: { <N extends keyof E, K extends E[N] & string, E, A1, E1, R1>(discriminator: N, options: { readonly failure: K; readonly onFailure: (error: Extract<E, { [n in N]: K; }>) => Effect<A1, E1, R1>; }): <A, R>(self: Effect<A, E, R>) => Effect<A1 | A, E1 | Exclude<E, { [n in N]: K; }>, R1 | R>; <A, E, R, N extends keyof E, K extends E[N] & string, A1, E1, R1>(self: Effect<A, E, R>, discriminator: N, options: { readonly failure: K; readonly onFailure: (error: Extract<E, { [n in N]: K; }>) => Effect<A1, E1, R1>; }): Effect<A | A1, E1 | Exclude<E, { [n in N]: K; }>, R | R1>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Effect.ts#L3414)

Since v2.0.0