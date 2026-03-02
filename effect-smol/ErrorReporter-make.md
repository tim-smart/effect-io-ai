Package: `effect`<br />
Module: `ErrorReporter`<br />

## ErrorReporter.make

Creates an `ErrorReporter` from a callback.

The returned reporter automatically deduplicates causes and individual
errors (the same object is never reported twice), skips interruptions,
and resolves the `ignore`, `severity`, and `attributes` annotations on
each error before invoking your callback.

**Example**

```ts
import { ErrorReporter } from "effect"

// Forward every failure to the console
const consoleReporter = ErrorReporter.make(
  ({ error, severity, attributes }) => {
    console.error(`[${severity}]`, error.message, attributes)
  }
)
```

**Signature**

```ts
declare const make: (report: (options: { readonly cause: Cause.Cause<unknown>; readonly error: Error; readonly attributes: ReadonlyRecord<string, unknown>; readonly severity: Severity; readonly fiber: Fiber.Fiber<unknown, unknown>; readonly timestamp: bigint; }) => void) => ErrorReporter
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/ErrorReporter.ts#L118)

Since v4.0.0