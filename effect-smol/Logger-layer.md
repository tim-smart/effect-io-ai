Package: `effect`<br />
Module: `Logger`<br />

## Logger.layer

Creates a `Layer` which will overwrite the current set of loggers with the
specified array of `loggers`.

If the specified array of `loggers` should be _merged_ with the current set
of loggers (instead of overwriting them), set `mergeWithExisting` to `true`.

**Example**

```ts
import { Effect, Logger } from "effect"

// Single logger layer
const JsonLoggerLive = Logger.layer([Logger.consoleJson])

// Multiple loggers layer
const MultiLoggerLive = Logger.layer([
  Logger.consoleJson,
  Logger.consolePretty(),
  Logger.formatStructured
])

// Merge with existing loggers
const AdditionalLoggerLive = Logger.layer(
  [Logger.consoleJson],
  { mergeWithExisting: true }
)

// Using multiple logger formats
const jsonLogger = Logger.consoleJson
const prettyLogger = Logger.consolePretty()

const CustomLoggerLive = Logger.layer([jsonLogger, prettyLogger])

const program = Effect.log("Application started").pipe(
  Effect.provide(CustomLoggerLive)
)
```

**Signature**

```ts
declare const layer: <const Loggers extends ReadonlyArray<Logger<unknown, unknown> | Effect.Effect<Logger<unknown, unknown>, any, any>>>(loggers: Loggers, options?: { readonly mergeWithExisting?: boolean | undefined; } | undefined) => Layer.Layer<never, Loggers extends readonly [] ? never : Effect.Error<Loggers[number]>, Exclude<Loggers extends readonly [] ? never : Effect.Services<Loggers[number]>, Scope.Scope>>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Logger.ts#L1153)

Since v4.0.0