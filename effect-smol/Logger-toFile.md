Package: `effect`<br />
Module: `Logger`<br />

## Logger.toFile

Creates, in a scope, a logger that writes string logger output to a file.

**Details**

The returned effect requires `FileSystem` and `Scope`. The file logger batches
string output, writes each batch to the specified path, and flushes remaining
entries when the scope closes.

**Example** (Writing JSON logs to a file)

```ts
import { Effect, Layer, Logger } from "effect"
import { NodeFileSystem, NodeRuntime } from "@effect/platform-node"

const fileLogger = Logger.formatJson.pipe(
  Logger.toFile("/tmp/log.txt")
)
const LoggerLive = Logger.layer([fileLogger]).pipe(
  Layer.provide(NodeFileSystem.layer)
)

Effect.log("a").pipe(
  Effect.andThen(Effect.log("b")),
  Effect.andThen(Effect.log("c")),
  Effect.provide(LoggerLive),
  NodeRuntime.runMain
)
```

**Example** (Writing logs to files)

```ts
import { Duration, Effect, Logger } from "effect"
import { NodeFileSystem } from "@effect/platform-node"

// Basic file logging. The scope keeps the file open while logs are emitted
// and flushes pending entries when it closes.
const basicFileLogger = Effect.scoped(
  Effect.gen(function*() {
    const fileLogger = yield* Logger.formatJson.pipe(
      Logger.toFile("/tmp/app.log")
    )

    yield* Effect.log("Application started").pipe(
      Effect.provide(Logger.layer([fileLogger]))
    )
  })
).pipe(
  Effect.provide(NodeFileSystem.layer)
)

// File logger with custom batch window
const batchedFileLogger = Effect.scoped(
  Effect.gen(function*() {
    const fileLogger = yield* Logger.formatLogFmt.pipe(
      Logger.toFile("/var/log/myapp.log", {
        flag: "a",
        batchWindow: Duration.seconds(5)
      })
    )

    yield* Effect.all([
      Effect.log("Event 1"),
      Effect.log("Event 2"),
      Effect.log("Event 3")
    ]).pipe(
      Effect.provide(Logger.layer([fileLogger]))
    )
  })
).pipe(
  Effect.provide(NodeFileSystem.layer)
)

// Multiple loggers: console + file
const multiLogger = Effect.scoped(
  Effect.gen(function*() {
    const fileLogger = yield* Logger.formatJson.pipe(
      Logger.toFile("/tmp/production.log")
    )

    const loggerLive = Logger.layer([
      Logger.consolePretty(),
      fileLogger
    ])

    yield* Effect.log("Production event").pipe(
      Effect.provide(loggerLive)
    )
  })
).pipe(
  Effect.provide(NodeFileSystem.layer)
)
```

**Signature**

```ts
declare const toFile: ((path: string, options?: { readonly flag?: FileSystem.OpenFlag | undefined; readonly mode?: number | undefined; readonly batchWindow?: Duration.Input | undefined; } | undefined) => <Message>(self: Logger<Message, string>) => Effect.Effect<Logger<Message, void>, PlatformError, Scope.Scope | FileSystem.FileSystem>) & (<Message>(self: Logger<Message, string>, path: string, options?: { readonly flag?: FileSystem.OpenFlag | undefined; readonly mode?: number | undefined; readonly batchWindow?: Duration.Input | undefined; } | undefined) => Effect.Effect<Logger<Message, void>, PlatformError, Scope.Scope | FileSystem.FileSystem>)
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Logger.ts#L1329)

Since v4.0.0