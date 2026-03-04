Package: `effect`<br />
Module: `ErrorReporter`<br />

## ErrorReporter.severity

Symbol key used to override the severity level of an error.

When set, the reporter callback receives this value as `severity` instead
of the default `"Error"`. Accepted values are the `LogLevel.Severity`
literals: `"Trace"`, `"Debug"`, `"Info"`, `"Warn"`, `"Error"`, `"Fatal"`.

**Example**

```ts
import { Data, ErrorReporter } from "effect"

class DeprecationWarning extends Data.TaggedError("DeprecationWarning")<{}> {
  readonly [ErrorReporter.severity] = "Warn" as const
}
```

**Signature**

```ts
type severity = "~effect/ErrorReporter/severity"
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/ErrorReporter.ts#L359)

Since v4.0.0