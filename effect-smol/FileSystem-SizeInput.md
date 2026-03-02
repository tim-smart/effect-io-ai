Package: `effect`<br />
Module: `FileSystem`<br />

## FileSystem.SizeInput

Input type for size parameters that accepts multiple numeric types.

This union type allows file system operations to accept size values in
different formats for convenience, which are then normalized to the
branded `Size` type internally.

**Example**

```ts
import { Effect, FileSystem } from "effect"

const program = Effect.gen(function*() {
  const fs = yield* FileSystem.FileSystem

  // All of these are valid SizeInput values
  yield* fs.truncate("file1.txt", 1024) // number
  yield* fs.truncate("file2.txt", BigInt(2048)) // bigint
  yield* fs.truncate("file3.txt", FileSystem.Size(4096)) // Size
})
```

**Signature**

```ts
type SizeInput = bigint | number | Size
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/FileSystem.ts#L420)

Since v4.0.0