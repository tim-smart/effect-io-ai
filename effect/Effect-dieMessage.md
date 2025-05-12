Package: `effect`<br />
Module: `Effect`<br />

## Effect.dieMessage

Creates an effect that terminates a fiber with a `RuntimeException`
containing the specified message.

**Details**

This function is used to signal a defect, representing a critical and
unexpected error in the code. When invoked, it produces an effect that
terminates the fiber with a `RuntimeException` carrying the given message.

The resulting effect has an error channel of type `never`, indicating it does
not handle or recover from the error.

**When to Use**

Use this function when you want to terminate a fiber due to an unrecoverable
defect and include a clear explanation in the message.

**Example** (Terminating on Division by Zero with a Specified Message)

```ts
import { Effect } from "effect"

const divide = (a: number, b: number) =>
  b === 0
    ? Effect.dieMessage("Cannot divide by zero")
    : Effect.succeed(a / b)

//      ┌─── Effect<number, never, never>
//      ▼
const program = divide(1, 0)

Effect.runPromise(program).catch(console.error)
// Output:
// (FiberFailure) RuntimeException: Cannot divide by zero
//   ...stack trace...
```

**See**

- `die` for a variant that throws a specified error.
- `dieSync` for a variant that throws a specified error, evaluated
lazily.

**Signature**

```ts
declare const dieMessage: (message: string) => Effect<never>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Effect.ts#L2683)

Since v2.0.0