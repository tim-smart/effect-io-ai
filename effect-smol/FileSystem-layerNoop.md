Package: `effect`<br />
Module: `FileSystem`<br />

## FileSystem.layerNoop

Creates a Layer that provides a no-op FileSystem implementation for testing.

This is a convenience function that wraps `makeNoop` in a Layer, making it easy
to provide the test filesystem to your Effect programs.

**Example**

```ts
import { Effect, FileSystem } from "effect"

// Create a test layer with specific behaviors
const testLayer = FileSystem.layerNoop({
  readFileString: (path) => Effect.succeed("mocked content"),
  exists: () => Effect.succeed(true)
})

const program = Effect.gen(function*() {
  const fs = yield* FileSystem.FileSystem
  const content = yield* fs.readFileString("any-file.txt")
  return content
})

// Provide the test layer
const testProgram = Effect.provide(program, testLayer)
```

**Signature**

```ts
declare const layerNoop: (fileSystem: Partial<FileSystem>) => Layer.Layer<FileSystem>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/FileSystem.ts#L984)

Since v4.0.0