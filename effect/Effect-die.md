Package: `effect`<br />
Module: `Effect`<br />

## Effect.die

Creates an effect that terminates a fiber with a specified error.

**Details**

This function is used to signal a defect, which represents a critical and
unexpected error in the code. When invoked, it produces an effect that does
not handle the error and instead terminates the fiber.

The error channel of the resulting effect is of type `never`, indicating that
it cannot recover from this failure.

**When to Use**

Use this function when encountering unexpected conditions in your code that
should not be handled as regular errors but instead represent unrecoverable
defects.

**Example**

```ts
// Title: Terminating on Division by Zero with a Specified Error
import { Effect } from "effect"

const divide = (a: number, b: number) =>
  b === 0
    ? Effect.die(new Error("Cannot divide by zero"))
    : Effect.succeed(a / b)

//      ┌─── Effect<number, never, never>
//      ▼
const program = divide(1, 0)

// Effect.runPromise(program).catch(console.error)
// Output:
// (FiberFailure) Error: Cannot divide by zero
//   ...stack trace...
```

**See**

- `dieSync` for a variant that throws a specified error, evaluated
lazily.
- `dieMessage` for a variant that throws a `RuntimeException` with a
message.

**Signature**

```ts
declare const die: (defect: unknown) => Effect<never>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Effect.ts#L2582)

Since v2.0.0