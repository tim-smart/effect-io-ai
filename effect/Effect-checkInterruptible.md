# checkInterruptible

Checks if interruption is allowed and executes a callback accordingly.

**Details**

This function checks the current interrupt status of the running fiber. It
then calls the provided callback, passing a boolean indicating whether
interruption is allowed.

**When to Use**

This is useful for handling specific logic based on whether the current
operation can be interrupted, such as when performing asynchronous operations
or handling cancellation.

To import and use `checkInterruptible` from the "Effect" module:

```ts
import * as Effect from "effect/Effect"
// Can be accessed like this
Effect.checkInterruptible
```

**Example**

```ts
import { Console, Effect } from "effect"

const program = Effect.gen(function* () {
  yield* Effect.checkInterruptible((isInterruptible) => {
    if (isInterruptible) {
      return Console.log("You can interrupt this operation.")
    } else {
      return Console.log("This operation cannot be interrupted.")
    }
  })
})

// Effect.runPromise(program)
// Output: You can interrupt this operation.

// Effect.runPromise(program.pipe(Effect.uninterruptible))
// Output: This operation cannot be interrupted.
```

**Signature**

```ts
export declare const checkInterruptible: <A, E, R>(f: (isInterruptible: boolean) => Effect<A, E, R>) => Effect<A, E, R>
```
