# toFile

Create a Logger from another string Logger that writes to the specified file.

To import and use `toFile` from the "PlatformLogger" module:

```ts
import * as PlatformLogger from "@effect/platform/PlatformLogger"
// Can be accessed like this
PlatformLogger.toFile
```

**Example**

```ts
import { PlatformLogger } from "@effect/platform"
import { NodeFileSystem, NodeRuntime } from "@effect/platform-node"
import { Effect, Layer, Logger } from "effect"

const fileLogger = Logger.logfmtLogger.pipe(PlatformLogger.toFile("log.txt"))
const LoggerLive = Logger.replaceScoped(Logger.defaultLogger, fileLogger).pipe(Layer.provide(NodeFileSystem.layer))

Effect.log("a").pipe(
  Effect.zipRight(Effect.log("b")),
  Effect.zipRight(Effect.log("c")),
  Effect.provide(LoggerLive),
  NodeRuntime.runMain
)
```

**Signature**

```ts
export declare const toFile: {
  (
    path: string,
    options?: (OpenFileOptions & { readonly batchWindow?: DurationInput | undefined }) | undefined
  ): <Message>(
    self: Logger.Logger<Message, string>
  ) => Effect<Logger.Logger<Message, void>, PlatformError, Scope | FileSystem>
  <Message>(
    self: Logger.Logger<Message, string>,
    path: string,
    options?: (OpenFileOptions & { readonly batchWindow?: DurationInput | undefined }) | undefined
  ): Effect<Logger.Logger<Message, void>, PlatformError, Scope | FileSystem>
}
```
