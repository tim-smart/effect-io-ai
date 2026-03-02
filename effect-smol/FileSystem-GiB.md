Package: `effect`<br />
Module: `FileSystem`<br />

## FileSystem.GiB

Creates a `Size` representing gibibytes (1024³ bytes).

Converts a number of gibibytes to the equivalent size in bytes.
Uses binary gibibytes (1,073,741,824 bytes) rather than decimal gigabytes.

**Example**

```ts
import { Console, Effect, FileSystem } from "effect"

const program = Effect.gen(function*() {
  const fs = yield* FileSystem.FileSystem

  // Check available space before creating large files
  const stats = yield* fs.stat(".")
  const requiredSpace = FileSystem.GiB(5)

  // Create a large temporary file
  const tempFile = yield* fs.makeTempFile({ prefix: "large-" })
  yield* fs.truncate(tempFile, FileSystem.GiB(1)) // 1 GiB file

  yield* Console.log(`Created ${tempFile} with 1 GiB size`)
})
```

**Signature**

```ts
declare const GiB: (n: number) => Size
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/FileSystem.ts#L550)

Since v4.0.0