# sandbox

Transforms an effect to expose detailed error causes.

**Details**

This function enhances an effect by providing detailed information about any
error, defect, or interruption that may occur during its execution. It
modifies the error channel of the effect so that it includes a full cause of
the failure, wrapped in a `Cause<E>` type.

After applying this function, you can use operators like {@link catchAll} and
{@link catchTags} to handle specific types of errors.

If you no longer need the detailed cause information, you can revert the
changes using {@link unsandbox} to return to the original error-handling
behavior.

To import and use `sandbox` from the "Effect" module:

```ts
import * as Effect from "effect/Effect"
// Can be accessed like this
Effect.sandbox
```

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

// Effect.runPromise(main).then(console.log)
// Output:
// Caught a defect: Oh uh!
// fallback result on failure
```

**Signature**

```ts
export declare const sandbox: <A, E, R>(self: Effect<A, E, R>) => Effect<A, Cause.Cause<E>, R>
```
