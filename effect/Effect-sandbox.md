# sandbox

The `sandbox` function transforms an effect by exposing the full cause
of any error, defect, or fiber interruption that might occur during its
execution. It changes the error channel of the effect to include detailed
information about the cause, which is wrapped in a `Cause<E>` type.

This function is useful when you need access to the complete underlying cause
of failures, defects, or interruptions, enabling more detailed error
handling. Once you apply `sandbox`, you can use operators like
{@link catchAll} and {@link catchTags} to handle specific error conditions.
If necessary, you can revert the sandboxing operation with {@link unsandbox}
to return to the original error handling behavior.

To import and use `sandbox` from the "Effect" module:

ts
import \* as Effect from "effect/Effect"
// Can be accessed like this
Effect.sandbox
undefined

**Example**

```ts
import { Effect, Console } from "effect"

//      ┌─── Effect<string, Error, never>
//      ▼
const task = Effect.fail(new Error("Oh uh!")).pipe(Effect.as("primary result"))

//      ┌─── Effect<string, Cause<Error>, never>
//      ▼
const sandboxed = Effect.sandbox(task)

const program = Effect.catchTags(sandboxed, {
  Die: (cause) => Console.log(`Caught a defect: ${cause.defect}`).pipe(Effect.as("fallback result on defect")),
  Interrupt: (cause) =>
    Console.log(`Caught a defect: ${cause.fiberId}`).pipe(Effect.as("fallback result on fiber interruption")),
  Fail: (cause) => Console.log(`Caught a defect: ${cause.error}`).pipe(Effect.as("fallback result on failure"))
})

// Restore the original error handling with unsandbox
const main = Effect.unsandbox(program)

Effect.runPromise(main).then(console.log)
// Output:
// Caught a defect: Oh uh!
// fallback result on failure
```

**Signature**

```ts
export declare const sandbox: <A, E, R>(self: Effect<A, E, R>) => Effect<A, Cause.Cause<E>, R>
```
