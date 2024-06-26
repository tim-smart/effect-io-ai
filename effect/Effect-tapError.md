# tapError

Executes an effectful operation to inspect the failure of an effect without altering it.

To import and use `tapError` from the "Effect" module:

```ts
import * as Effect from "effect/Effect"
// Can be accessed like this
Effect.tapError
```

**Example**

```ts
import { Effect, Console } from "effect"

// Create an effect that is designed to fail, simulating an occurrence of a network error
const task: Effect.Effect<number, string> = Effect.fail("NetworkError")

// Log the error message if the task fails. This function only executes if there is an error,
// providing a method to handle or inspect errors without altering the outcome of the original effect.
const tapping = Effect.tapError(task, (error) => Console.log(`expected error: ${error}`))

Effect.runFork(tapping)
// Output:
// expected error: NetworkError
```

**Signature**

```ts
export declare const tapError: {
  <E, X, E2, R2>(f: (e: NoInfer<E>) => Effect<X, E2, R2>): <A, R>(self: Effect<A, E, R>) => Effect<A, E | E2, R2 | R>
  <A, E, R, X, E2, R2>(self: Effect<A, E, R>, f: (e: E) => Effect<X, E2, R2>): Effect<A, E | E2, R | R2>
}
```
