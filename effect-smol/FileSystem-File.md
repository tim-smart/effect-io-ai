Package: `effect`<br />
Module: `FileSystem`<br />

## FileSystem.File

Interface representing an open file handle.

Provides low-level file operations including reading, writing, seeking,
and retrieving file information. File handles are automatically managed
within scoped operations to ensure proper cleanup.

**Example**

```ts
import { Console, Effect, FileSystem } from "effect"

const program = Effect.gen(function*() {
  const fs = yield* FileSystem.FileSystem

  // Open a file and work with the handle
  yield* Effect.scoped(
    Effect.gen(function*() {
      const file = yield* fs.open("./data.txt", { flag: "r+" })

      // Get file information
      const stats = yield* file.stat
      yield* Console.log(`File size: ${stats.size} bytes`)

      // Read from specific position
      yield* file.seek(10, "start")
      const buffer = new Uint8Array(5)
      const bytesRead = yield* file.read(buffer)
      yield* Console.log(`Read ${bytesRead} bytes:`, buffer)

      // Write data
      const data = new TextEncoder().encode("Hello")
      yield* file.write(data)
      yield* file.sync // Flush to disk
    })
  )
})
```

**Signature**

```ts
export interface File {
  readonly [FileTypeId]: typeof FileTypeId
  readonly fd: File.Descriptor
  readonly stat: Effect.Effect<File.Info, PlatformError>
  readonly seek: (offset: SizeInput, from: SeekMode) => Effect.Effect<void>
  readonly sync: Effect.Effect<void, PlatformError>
  readonly read: (buffer: Uint8Array) => Effect.Effect<Size, PlatformError>
  readonly readAlloc: (size: SizeInput) => Effect.Effect<Option.Option<Uint8Array>, PlatformError>
  readonly truncate: (length?: SizeInput) => Effect.Effect<void, PlatformError>
  readonly write: (buffer: Uint8Array) => Effect.Effect<Size, PlatformError>
  readonly writeAll: (buffer: Uint8Array) => Effect.Effect<void, PlatformError>
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/FileSystem.ts#L1046)

Since v4.0.0