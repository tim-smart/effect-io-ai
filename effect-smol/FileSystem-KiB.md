Package: `effect`<br />
Module: `FileSystem`<br />

## FileSystem.KiB

Creates a `Size` representing kilobytes (1024 bytes).

Converts a number of kilobytes to the equivalent size in bytes.
Uses binary kilobytes (1024 bytes) rather than decimal (1000 bytes).

**Example**

```ts
import { Effect, FileSystem } from "effect"

const program = Effect.gen(function*() {
  const fs = yield* FileSystem.FileSystem

  // Create a 64 KiB buffer size for streaming
  const bufferSize = FileSystem.KiB(64)

  const stream = fs.stream("large-file.txt", {
    chunkSize: bufferSize
  })

  // Truncate file to 100 KiB
  yield* fs.truncate("data.txt", FileSystem.KiB(100))
})
```

**Signature**

```ts
declare const KiB: (n: number) => Size
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/FileSystem.ts#L488)

Since v4.0.0