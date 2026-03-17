Package: `effect`<br />
Module: `FileSystem`<br />

## FileSystem.TiB

Creates a `Size` representing tebibytes (1024⁴ bytes).

Converts a number of tebibytes to the equivalent size in bytes.
Uses binary tebibytes (1,099,511,627,776 bytes) rather than decimal terabytes.

**Example**

```ts
import { Console, Effect, FileSystem } from "effect"

const program = Effect.gen(function*() {
  const fs = yield* FileSystem.FileSystem

  // Check if we're dealing with very large files
  const stats = yield* fs.stat("database-backup.sql")
  const oneTiB = FileSystem.TiB(1)

  if (stats.size > oneTiB) {
    yield* Console.log("This is a very large database backup!")

    // Use larger chunk sizes for such files
    const stream = fs.stream("database-backup.sql", {
      chunkSize: FileSystem.MiB(100) // 100 MiB chunks
    })
  }
})
```

**Signature**

```ts
declare const TiB: (n: number) => Size
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/FileSystem.ts#L585)

Since v4.0.0