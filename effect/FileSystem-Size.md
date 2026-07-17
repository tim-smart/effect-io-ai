Package: `effect`<br />
Module: `FileSystem`<br />

## FileSystem.Size

Represents a file size in bytes using a branded bigint.

**Details**

This type ensures type safety when working with file sizes, preventing
accidental mixing of regular numbers with size values. The underlying
bigint allows for handling very large file sizes beyond JavaScript's
number precision limits.

**Example** (Creating branded file sizes)

```ts
import { Effect, FileSystem } from "effect"

// Create sizes using the Size constructor
const smallFile = FileSystem.Size(1024) // 1 KB
const largeFile = FileSystem.Size(BigInt("9007199254740992")) // Very large

// Use with file operations
const truncateToSize = Effect.fnUntraced(function*(path: string, size: FileSystem.Size) {
  const fs = yield* FileSystem.FileSystem
  return yield* fs.truncate(path, size)
})
```

**Signature**

```ts
type Size = Brand.Branded<bigint, "Size">
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/FileSystem.ts#L400)

Since v4.0.0