Package: `effect`<br />
Module: `Effect`<br />

## Effect.sandbox

The `sandbox` function transforms an effect by exposing the full cause
of any error, defect, or fiber interruption that might occur during its
execution. It changes the error channel of the effect to include detailed
information about the cause, which is wrapped in a `Cause<E>` type.

This function is useful when you need access to the complete underlying cause
of failures, defects, or interruptions, enabling more detailed error
handling. Once you apply `sandbox`, you can use operators like
`catchAll` and `catchTags` to handle specific error conditions.
If necessary, you can revert the sandboxing operation with `unsandbox`
to return to the original error handling behavior.

**Example**

```ts
import { Cause, Effect } from "effect"

const task = Effect.fail("Something went wrong")

// Sandbox exposes the full cause as the error type
const program = Effect.gen(function*() {
  const result = yield* Effect.flip(Effect.sandbox(task))
  return `Caught cause: ${Cause.squash(result)}`
})

Effect.runPromise(program).then(console.log)
// Output: "Caught cause: Something went wrong"
```

**See**

- `unsandbox` to restore the original error handling.

**Signature**

```ts
declare const sandbox: <A, E, R>(self: Effect<A, E, R>) => Effect<A, Cause.Cause<E>, R>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Effect.ts#L4145)

Since v2.0.0