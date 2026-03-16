Package: `effect`<br />
Module: `FileSystem`<br />

## FileSystem.PiB

Creates a `Size` representing pebibytes (1024⁵ bytes).

Converts a number of pebibytes to the equivalent size in bytes.
Uses binary pebibytes (1,125,899,906,842,624 bytes) rather than decimal petabytes.
This function uses BigInt arithmetic to handle the very large numbers involved.

**Example**

```ts
import { Console, Effect, FileSystem } from "effect"

const program = Effect.gen(function*() {
  const fs = yield* FileSystem.FileSystem

  // For extremely large data processing scenarios
  const massiveDataset = FileSystem.PiB(2) // 2 PiB

  // This would typically be used in enterprise/cloud scenarios
  yield* Console.log(`Processing ${massiveDataset} bytes of data`)

  // Such large files would require specialized streaming
  const stream = fs.stream("massive-dataset.bin", {
    chunkSize: FileSystem.GiB(1), // 1 GiB chunks
    offset: FileSystem.TiB(100) // Start from 100 TiB offset
  })
})
```

**Signature**

```ts
declare const PiB: (n: number) => Size
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/FileSystem.ts#L620)

Since v4.0.0