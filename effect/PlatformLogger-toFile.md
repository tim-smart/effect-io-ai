## toFile

Create a Logger from another string Logger that writes to the specified file.

**Example**

```ts
import { PlatformLogger } from "@effect/platform"
import { NodeFileSystem, NodeRuntime } from "@effect/platform-node"
import { Effect, Layer, Logger } from "effect"

const fileLogger = Logger.logfmtLogger.pipe(
  PlatformLogger.toFile("/tmp/log.txt")
)
const LoggerLive = Logger.replaceScoped(Logger.defaultLogger, fileLogger).pipe(
  Layer.provide(NodeFileSystem.layer)
)

Effect.log("a").pipe(
  Effect.zipRight(Effect.log("b")),
  Effect.zipRight(Effect.log("c")),
  Effect.provide(LoggerLive),
  NodeRuntime.runMain
)
```

**Signature**

```ts
declare const toFile: { (path: string, options?: (OpenFileOptions & { readonly batchWindow?: DurationInput | undefined; }) | undefined): <Message>(self: Logger.Logger<Message, string>) => Effect<Logger.Logger<Message, void>, PlatformError, Scope | FileSystem>; <Message>(self: Logger.Logger<Message, string>, path: string, options?: (OpenFileOptions & { readonly batchWindow?: DurationInput | undefined; }) | undefined): Effect<Logger.Logger<Message, void>, PlatformError, Scope | FileSystem>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/platform/src/PlatformLogger.ts#L37)

Since v1.0.0