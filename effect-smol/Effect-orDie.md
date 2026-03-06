Package: `effect`<br />
Module: `Effect`<br />

## Effect.orDie

Converts an effect's failure into a fiber termination, removing the error from the effect's type.

**When to Use*

Use `orDie` when failures should be treated as unrecoverable defects and no error handling is required.

**Details**

The `orDie` function is used when you encounter errors that you do not want to handle or recover from.
It removes the error type from the effect and ensures that any failure will terminate the fiber.
This is useful for propagating failures as defects, signaling that they should not be handled within the effect.

**Example**

```ts
// Title: Propagating an Error as a Defect
import { Data, Effect } from "effect"

class DivideByZeroError extends Data.TaggedError("DivideByZeroError")<{}> {}

const divide = (a: number, b: number) =>
  b === 0
    ? Effect.fail(new DivideByZeroError())
    : Effect.succeed(a / b)

//      ┌─── Effect<number, never, never>
//      ▼
const program = Effect.orDie(divide(1, 0))

Effect.runPromise(program).catch(console.error)
// Output:
// (FiberFailure) DivideByZeroError
//   ...stack trace...
```

**See**

- `orDieWith` if you need to customize the error.

**Signature**

```ts
declare const orDie: <A, E, R>(self: Effect<A, E, R>) => Effect<A, never, R>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Effect.ts#L3597)

Since v2.0.0