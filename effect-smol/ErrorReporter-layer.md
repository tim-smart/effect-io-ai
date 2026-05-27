Package: `effect`<br />
Module: `ErrorReporter`<br />

## ErrorReporter.layer

Creates a `Layer` that registers one or more `ErrorReporter`s.

**When to use**

Use to provide one or more error reporters to effects that perform error
reporting.

**Details**

Reporters can be plain `ErrorReporter` values or effectful
`Effect<ErrorReporter>` values that are resolved when the layer is built. By
default the provided reporters **replace** any previously registered
reporters. Set `mergeWithExisting: true` to add them alongside existing ones.

**Example** (Providing error reporters)

```ts
import { Effect, ErrorReporter } from "effect"

const consoleReporter = ErrorReporter.make(({ error, severity }) => {
  console.error(`[${severity}]`, error.message)
})

const metricsReporter = ErrorReporter.make(({ severity }) => {
  // increment an error counter by severity
})

// Replace all existing reporters
const ReporterLive = ErrorReporter.layer([
  consoleReporter,
  metricsReporter
])

// Add to existing reporters instead of replacing
const ReporterMerged = ErrorReporter.layer(
  [metricsReporter],
  { mergeWithExisting: true }
)

const program = Effect.fail("boom").pipe(
  Effect.withErrorReporting,
  Effect.provide(ReporterLive)
)
```

**See**

- `make` for creating an `ErrorReporter` from a callback
- `CurrentErrorReporters` for low-level access to the current reporters

**Signature**

```ts
declare const layer: <const Reporters extends ReadonlyArray<ErrorReporter | Effect.Effect<ErrorReporter, any, any>>>(reporters: Reporters, options?: { readonly mergeWithExisting?: boolean | undefined; } | undefined) => Layer.Layer<never, Reporters extends readonly [] ? never : Effect.Error<Reporters[number]>, Exclude<Reporters extends readonly [] ? never : Effect.Services<Reporters[number]>, Scope.Scope>>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/ErrorReporter.ts#L260)

Since v4.0.0