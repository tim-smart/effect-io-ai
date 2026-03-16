Package: `effect`<br />
Module: `FileSystem`<br />

## FileSystem.File.Info

Comprehensive file information structure.

Contains metadata about a file or directory including type, timestamps,
permissions, and size information. This structure is returned by file
stat operations.

**Example**

```ts
import { Console, Effect, FileSystem, Option } from "effect"

const program = Effect.gen(function*() {
  const fs = yield* FileSystem.FileSystem

  const info: FileSystem.File.Info = yield* fs.stat("./data.txt")

  yield* Console.log(`File type: ${info.type}`)
  yield* Console.log(`File size: ${info.size} bytes`)
  yield* Console.log(`Mode: ${info.mode.toString(8)}`) // Octal permissions

  // Handle optional timestamps
  const mtime = Option.getOrElse(info.mtime, () => new Date(0))
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

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/FileSystem.ts#L1127)

Since v4.0.0