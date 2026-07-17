Package: `effect`<br />
Module: `FileSystem`<br />

## FileSystem.makeNoop

Creates a stub `FileSystem` implementation for tests.

**Details**

By default, `exists` returns `false`, `remove` succeeds, many file operations
fail with `PlatformError` `NotFound`, and temporary-directory/file operations
die as not implemented. Pass method overrides to provide the behavior needed
by a specific test without touching the real file system.

**Example** (Creating a no-op FileSystem)

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

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/FileSystem.ts#L912)

Since v4.0.0