Package: `effect`<br />
Module: `FileSystem`<br />

## FileSystem.File.Info

Comprehensive file information structure.

Contains metadata about a file or directory including type, timestamps,
permissions, and size information. This structure is returned by file
stat operations.

**Example**

```ts
import { Console, Effect, FileSystem } from "effect"

const program = Effect.gen(function*() {
  const fs = yield* FileSystem.FileSystem

  const info: FileSystem.File.Info = yield* fs.stat("./data.txt")

  yield* Console.log(`File type: ${info.type}`)
  yield* Console.log(`File size: ${info.size} bytes`)
  yield* Console.log(`Mode: ${info.mode.toString(8)}`) // Octal permissions

  // Handle optional timestamps
  const mtime = info.mtime ?? new Date(0)
  yield* Console.log(`Modified: ${mtime.toISOString()}`)

  // Check if it's a regular file
  if (info.type === "File") {
    yield* Console.log("Processing regular file...")
  }
})
```

**Signature**

```ts
export interface Info {
    readonly type: Type
    readonly mtime: Date | undefined
    readonly atime: Date | undefined
    readonly birthtime: Date | undefined
    readonly dev: number
    readonly ino: number | undefined
    readonly mode: number
    readonly nlink: number | undefined
    readonly uid: number | undefined
    readonly gid: number | undefined
    readonly rdev: number | undefined
    readonly size: Size
    readonly blksize: Size | undefined
    readonly blocks: number | undefined
  }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/FileSystem.ts#L1124)

Since v4.0.0