Package: `effect`<br />
Module: `FileSystem`<br />

## FileSystem.MiB

Creates a `Size` representing mebibytes (1024² bytes).

Converts a number of mebibytes to the equivalent size in bytes.
Uses binary mebibytes (1,048,576 bytes) rather than decimal megabytes.

**Example**

```ts
import { Effect, FileSystem } from "effect"

const program = Effect.gen(function*() {
  const fs = yield* FileSystem.FileSystem

  // Set a 10 MiB chunk size for large file operations
  const largeChunkSize = FileSystem.MiB(10)

  const stream = fs.stream("video.mp4", {
    chunkSize: largeChunkSize
  })

  // Check if file is larger than 100 MiB
  const stats = yield* fs.stat("archive.zip")
  const maxSize = FileSystem.MiB(100)
  if (stats.size > maxSize) {
    yield* Effect.log("File is very large!")
  }
})
```

**Signature**

```ts
declare const MiB: (n: number) => Size
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/FileSystem.ts#L522)

Since v4.0.0