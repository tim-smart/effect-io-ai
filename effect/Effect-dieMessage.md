# dieMessage

Creates an effect that terminates a fiber with a `RuntimeException`
containing the specified message.

**When to Use**

Use `dieMessage` when you want to terminate a fiber due to an unrecoverable
defect and include a clear explanation in the message.

**Details**

The `dieMessage` function is used to signal a defect, representing a critical
and unexpected error in the code. When invoked, it produces an effect that
terminates the fiber with a `RuntimeException` carrying the given message.

The resulting effect has an error channel of type `never`, indicating it does
not handle or recover from the error.

To import and use `dieMessage` from the "Effect" module:

ts
import \* as Effect from "effect/Effect"
// Can be accessed like this
Effect.dieMessage
undefined

**Example**

```ts
// Title: Terminating on Division by Zero with a Specified Message
import { Effect } from "effect"

const divide = (a: number, b: number) => (b === 0 ? Effect.dieMessage("Cannot divide by zero") : Effect.succeed(a / b))

//      ┌─── Effect<number, never, never>
//      ▼
const program = divide(1, 0)

Effect.runPromise(program).catch(console.error)
// Output:
// (FiberFailure) RuntimeException: Cannot divide by zero
//   ...stack trace...
```

**Signature**

```ts
export declare const dieMessage: (message: string) => Effect<never>
```
