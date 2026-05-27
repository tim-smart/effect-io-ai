Package: `effect`<br />
Module: `ErrorReporter`<br />

## ErrorReporter.report

Manually reports a `Cause` to all registered `ErrorReporter`s on the
current fiber.

**When to use**

Use to report a failure for observability without failing the current fiber.

**Example** (Reporting a cause manually)

```ts
import { Cause, Effect, ErrorReporter } from "effect"

// Log the cause for monitoring, then continue with a fallback
const program = Effect.gen(function*() {
  const cause = Cause.fail("something went wrong")
  yield* ErrorReporter.report(cause)
  return "fallback value"
})
```

**Signature**

```ts
declare const report: <E>(cause: Cause.Cause<E>) => Effect.Effect<void>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/ErrorReporter.ts#L310)

Since v4.0.0