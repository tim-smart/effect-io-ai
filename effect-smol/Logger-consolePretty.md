Package: `effect`<br />
Module: `Logger`<br />

## Logger.consolePretty

A `Logger` which outputs logs in a "pretty" format and writes them to the
console.

For example:
```
[09:37:17.579] INFO (#1) label=0ms: hello
  key: value
```

**Example**

```ts
import { Effect, Logger } from "effect"

// Use the pretty console logger with default settings
const basicPretty = Effect.log("Hello Pretty Format").pipe(
  Effect.provide(Logger.layer([Logger.consolePretty()]))
)

// Configure pretty logger options
const customPretty = Logger.consolePretty({
  colors: true,
  stderr: false,
  mode: "tty",
  formatDate: (date) => date.toLocaleTimeString()
})

// Perfect for development environment
const developmentProgram = Effect.gen(function*() {
  yield* Effect.log("Application starting")
  yield* Effect.logInfo("Database connected")
  yield* Effect.logWarning("High memory usage detected")
}).pipe(
  Effect.annotateLogs("environment", "development"),
  Effect.withLogSpan("startup"),
  Effect.provide(Logger.layer([customPretty]))
)

// Disable colors for CI/CD environments
const ciLogger = Logger.consolePretty({ colors: false })
```

**Signature**

```ts
declare const consolePretty: (options?: { readonly colors?: "auto" | boolean | undefined; readonly stderr?: boolean | undefined; readonly formatDate?: ((date: Date) => string) | undefined; readonly mode?: "browser" | "tty" | "auto" | undefined; }) => Logger<unknown, void>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Logger.ts#L890)

Since v4.0.0