Package: `effect`<br />
Module: `FileSystem`<br />

## FileSystem.File.Info

Comprehensive file information structure.

**Details**

Contains metadata about a file or directory including type, timestamps,
permissions, and size information. This structure is returned by file
stat operations.

**Example** (Inspecting file information)

```ts
import { Effect, FileSystem, Option } from "effect"

const program = Effect.gen(function*() {
  const fs = yield* FileSystem.FileSystem

  const path = yield* fs.makeTempFile({ prefix: "info-" })
  yield* fs.writeFileString(path, "hello")

  const info: FileSystem.File.Info = yield* fs.stat(path)

  console.log(`File type: ${info.type}`) // "File type: File"
  console.log(`File size: ${info.size} bytes`) // "File size: 5 bytes"
  console.log(`Mode: ${info.mode.toString(8)}`) // Octal permissions

  // Handle optional timestamps without inventing a fallback date
  const modified = Option.match(info.mtime, {
    onNone: () => "unavailable",
    onSome: (mtime) => mtime.toISOString()
  })
  console.log(`Modified: ${modified}`)

  // Check if it's a regular file
  if (info.type === "File") {
    console.log("Processing regular file...") // "Processing regular file..."
  }

  yield* fs.remove(path)
})
```

**Signature**

```ts
export interface Info {
    readonly type: Type
    readonly mtime: Option.Option<Date>
    readonly atime: Option.Option<Date>
    readonly birthtime: Option.Option<Date>
    readonly dev: number
    readonly ino: Option.Option<number>
    readonly mode: number
    readonly nlink: Option.Option<number>
    readonly uid: Option.Option<number>
    readonly gid: Option.Option<number>
    readonly rdev: Option.Option<number>
    readonly size: Size
    readonly blksize: Option.Option<Size>
    readonly blocks: Option.Option<number>
  }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/FileSystem.ts#L1212)

Since v4.0.0