Package: `effect`<br />
Module: `index`<br />

## index.ErrorReporter

Re-exports all named exports from the "./ErrorReporter.ts" module as `ErrorReporter`.

**Example**

```ts
import { Data, Effect, ErrorReporter } from "effect"

// A reporter that logs to the console
const consoleReporter = ErrorReporter.make(({ error, severity }) => {
  console.error(`[${severity}]`, error.message)
})

// An error that should be ignored by reporters
class NotFoundError extends Data.TaggedError("NotFoundError")<{}> {
  readonly [ErrorReporter.ignore] = true
}

// An error with custom severity and attributes
class RateLimitError extends Data.TaggedError("RateLimitError")<{
  readonly retryAfter: number
}> {
  readonly [ErrorReporter.severity] = "Warn" as const
  readonly [ErrorReporter.attributes] = {
    retryAfter: this.retryAfter
  }
}

// Opt in to error reporting with Effect.withErrorReporting
const program = Effect.gen(function*() {
  return yield* new RateLimitError({ retryAfter: 60 })
}).pipe(
  Effect.withErrorReporting,
  Effect.provide(ErrorReporter.layer([consoleReporter]))
)
```

**Signature**

```ts
export * as ErrorReporter from "./ErrorReporter.ts"
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/index.ts#L1172)

Since v4.0.0