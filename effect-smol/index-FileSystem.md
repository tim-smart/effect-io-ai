Package: `effect`<br />
Module: `index`<br />

## index.FileSystem

Re-exports all named exports from the "./FileSystem.ts" module as `FileSystem`.

**Example**

```ts
import { Console, Effect, FileSystem } from "effect"

const program = Effect.gen(function*() {
  const fs = yield* FileSystem.FileSystem

  // Create a directory
  yield* fs.makeDirectory("./temp", { recursive: true })

  // Write a file
  yield* fs.writeFileString("./temp/hello.txt", "Hello, World!")

  // Read the file back
  const content = yield* fs.readFileString("./temp/hello.txt")
  yield* Console.log("File content:", content)

  // Get file information
  const stats = yield* fs.stat("./temp/hello.txt")
  yield* Console.log("File size:", stats.size)

  // Clean up
  yield* fs.remove("./temp", { recursive: true })
})
```

**Signature**

```ts
export * as FileSystem from "./FileSystem.ts"
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/index.ts#L1383)

Since v4.0.0