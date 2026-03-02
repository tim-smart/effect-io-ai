Package: `effect`<br />
Module: `FileSystem`<br />

## FileSystem.makeNoop

Creates a no-op FileSystem implementation for testing purposes.

This function creates a FileSystem where most operations fail with "NotFound" errors,
except for operations that can be safely stubbed. You can override specific methods
by providing them in the `fileSystem` parameter.

This is useful for testing scenarios where you want to control specific file system
behaviors without affecting the actual file system.

**Example**

```ts
import { Effect, FileSystem, PlatformError } from "effect"

// Create a test filesystem that only allows reading specific files
const testFs = FileSystem.makeNoop({
  readFileString: (path) => {
    if (path === "test-config.json") {
      return Effect.succeed("{\"test\": true}")
    }
    return Effect.fail(
      PlatformError.systemError({
        _tag: "NotFound",
        module: "FileSystem",
        method: "readFileString",
        description: "File not found",
        pathOrDescriptor: path
      })
    )
  },
  exists: (path) => Effect.succeed(path === "test-config.json")
})

// Use in tests
const program = Effect.gen(function*() {
  const content = yield* testFs.readFileString("test-config.json")
  // Will succeed with mocked content
})

// Test with the no-op filesystem
const testProgram = Effect.provideService(
  program,
  FileSystem.FileSystem,
  testFs
)
```

**Signature**

```ts
declare const makeNoop: (fileSystem: Partial<FileSystem>) => FileSystem
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/FileSystem.ts#L859)

Since v4.0.0