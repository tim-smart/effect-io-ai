Package: `effect`<br />
Module: `FileSystem`<br />

## FileSystem.WatchBackend

Service key for file system watch backend implementations.

This service provides the low-level file watching capabilities that can be
implemented differently on various platforms (e.g., inotify on Linux,
FSEvents on macOS, etc.).

**Example**

```ts
import { Effect, FileSystem, Option, Stream } from "effect"

// Custom watch backend implementation
const customWatchBackend = {
  register: (path: string, stat: FileSystem.File.Info) => {
    // Implementation would depend on platform
    return Option.some(Stream.empty) // Placeholder implementation
  }
}

// Provide custom watch backend
const program = Effect.gen(function*() {
  const fs = yield* FileSystem.FileSystem

  // File watching will use the custom backend
  const watcher = fs.watch("./directory")
})

const withCustomBackend = Effect.provideService(
  program,
  FileSystem.WatchBackend,
  customWatchBackend
)
```

**Signature**

```ts
declare class WatchBackend
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/FileSystem.ts#L1260)

Since v4.0.0