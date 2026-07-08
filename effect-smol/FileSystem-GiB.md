Package: `effect`<br />
Module: `FileSystem`<br />

## FileSystem.GiB

Creates a `Size` representing gibibytes (1024³ bytes).

**Details**

Converts a number of gibibytes to the equivalent size in bytes.
Uses binary gibibytes (1,073,741,824 bytes) rather than decimal gigabytes.

**Example** (Creating gibibyte sizes)

```ts
import { Effect, FileSystem } from "effect"

const program = Effect.gen(function*() {
  const fs = yield* FileSystem.FileSystem

  // Use GiB values as size thresholds
  const maxArchiveSize = FileSystem.GiB(1)
  console.log(maxArchiveSize.toString()) // "1073741824"

  const tempFile = yield* fs.makeTempFile({ prefix: "archive-" })
  yield* fs.writeFileString(tempFile, "backup data")

  const info = yield* fs.stat(tempFile)
  console.log(info.size < maxArchiveSize) // true

  yield* fs.remove(tempFile)
})
```

**Signature**

```ts
declare const GiB: (n: number) => Size
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/FileSystem.ts#L573)

Since v4.0.0