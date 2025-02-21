# orDie

Converts an effect's failure into a fiber termination, removing the error
from the effect's type.

**Details**

The `orDie` function is used when you encounter errors that you do not want
to handle or recover from. It removes the error type from the effect and
ensures that any failure will terminate the fiber. This is useful for
propagating failures as defects, signaling that they should not be handled
within the effect.

\*_When to Use_

Use `orDie` when failures should be treated as unrecoverable defects and no
error handling is required.

To import and use `orDie` from the "Effect" module:

```ts
import * as Effect from "effect/Effect"
// Can be accessed like this
Effect.orDie
```

**Example**

```ts
// Title: Propagating an Error as a Defect
import { Effect } from "effect"

const divide = (a: number, b: number) =>
  b === 0 ? Effect.fail(new Error("Cannot divide by zero")) : Effect.succeed(a / b)

//      ┌─── Effect<number, never, never>
//      ▼
const program = Effect.orDie(divide(1, 0))

// Effect.runPromise(program).catch(console.error)
// Output:
// (FiberFailure) Error: Cannot divide by zero
//   ...stack trace...
```

**Signature**

```ts
export declare const orDie: <A, E, R>(self: Effect<A, E, R>) => Effect<A, never, R>
```
