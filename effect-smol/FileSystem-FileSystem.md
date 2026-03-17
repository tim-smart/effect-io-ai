Package: `effect`<br />
Module: `FileSystem`<br />

## FileSystem.FileSystem

Core interface for file system operations in Effect.

The FileSystem interface provides a comprehensive set of file and directory operations
that work cross-platform. All operations return Effect values that can be composed,
transformed, and executed safely with proper error handling.

**Example**

```ts
import { Console, Effect, FileSystem } from "effect"

const program = Effect.gen(function*() {
  const fs = yield* FileSystem.FileSystem

  // Basic file operations
  const exists = yield* fs.exists("./config.json")
  if (!exists) {
    yield* fs.writeFileString("./config.json", "{\"env\": \"development\"}")
  }

  // Directory operations
  yield* fs.makeDirectory("./logs", { recursive: true })

  // File information
  const stats = yield* fs.stat("./config.json")
  yield* Console.log(`File size: ${stats.size} bytes`)

  // Streaming operations
  const content = yield* fs.readFileString("./config.json")
  yield* Console.log("Config:", content)
})
```

**Signature**

```ts
export interface FileSystem {
  readonly [TypeId]: typeof TypeId

  /**
   * Check if a file can be accessed.
   * You can optionally specify the level of access to check for.
   */
  readonly access: (
    path: string,
    options?: {
      readonly ok?: boolean | undefined
      readonly readable?: boolean | undefined
      readonly writable?: boolean | undefined
    }
  ) => Effect.Effect<void, PlatformError>
  /**
   * Copy a file or directory from `fromPath` to `toPath`.
   *
   * Equivalent to `cp -r`.
   */
  readonly copy: (
    fromPath: string,
    toPath: string,
    options?: {
      readonly overwrite?: boolean | undefined
      readonly preserveTimestamps?: boolean | undefined
    }
  ) => Effect.Effect<void, PlatformError>
  /**
   * Copy a file from `fromPath` to `toPath`.
   */
  readonly copyFile: (
    fromPath: string,
    toPath: string
  ) => Effect.Effect<void, PlatformError>
  /**
   * Change the permissions of a file.
   */
  readonly chmod: (
    path: string,
    mode: number
  ) => Effect.Effect<void, PlatformError>
  /**
   * Change the owner and group of a file.
   */
  readonly chown: (
    path: string,
    uid: number,
    gid: number
  ) => Effect.Effect<void, PlatformError>
  /**
   * Check if a path exists.
   */
  readonly exists: (
    path: string
  ) => Effect.Effect<boolean, PlatformError>
  /**
   * Create a hard link from `fromPath` to `toPath`.
   */
  readonly link: (
    fromPath: string,
    toPath: string
  ) => Effect.Effect<void, PlatformError>
  /**
   * Create a directory at `path`. You can optionally specify the mode and
   * whether to recursively create nested directories.
   */
  readonly makeDirectory: (
    path: string,
    options?: {
      readonly recursive?: boolean | undefined
      readonly mode?: number | undefined
    }
  ) => Effect.Effect<void, PlatformError>
  /**
   * Create a temporary directory.
   *
   * By default the directory will be created inside the system's default
   * temporary directory, but you can specify a different location by setting
   * the `directory` option.
   *
   * You can also specify a prefix for the directory name by setting the
   * `prefix` option.
   */
  readonly makeTempDirectory: (options?: {
    readonly directory?: string | undefined
    readonly prefix?: string | undefined
  }) => Effect.Effect<string, PlatformError>
  /**
   * Create a temporary directory inside a scope.
   *
   * Functionally equivalent to `makeTempDirectory`, but the directory will be
   * automatically deleted when the scope is closed.
   */
  readonly makeTempDirectoryScoped: (options?: {
    readonly directory?: string | undefined
    readonly prefix?: string | undefined
  }) => Effect.Effect<string, PlatformError, Scope>
  /**
   * Create a temporary file.
   * The directory creation is functionally equivalent to `makeTempDirectory`.
   * The file name will be a randomly generated string.
   */
  readonly makeTempFile: (options?: {
    readonly directory?: string | undefined
    readonly prefix?: string | undefined
    readonly suffix?: string | undefined
  }) => Effect.Effect<string, PlatformError>
  /**
   * Create a temporary file inside a scope.
   *
   * Functionally equivalent to `makeTempFile`, but the file will be
   * automatically deleted when the scope is closed.
   */
  readonly makeTempFileScoped: (options?: {
    readonly directory?: string | undefined
    readonly prefix?: string | undefined
    readonly suffix?: string | undefined
  }) => Effect.Effect<string, PlatformError, Scope>
  /**
   * Open a file at `path` with the specified `options`.
   *
   * The file handle will be automatically closed when the scope is closed.
   */
  readonly open: (
    path: string,
    options?: {
      readonly flag?: OpenFlag | undefined
      readonly mode?: number | undefined
    }
  ) => Effect.Effect<File, PlatformError, Scope>
  /**
   * List the contents of a directory.
   *
   * You can recursively list the contents of nested directories by setting the
   * `recursive` option.
   */
  readonly readDirectory: (
    path: string,
    options?: {
      readonly recursive?: boolean | undefined
    }
  ) => Effect.Effect<Array<string>, PlatformError>
  /**
   * Read the contents of a file.
   */
  readonly readFile: (
    path: string
  ) => Effect.Effect<Uint8Array, PlatformError>
  /**
   * Read the contents of a file.
   */
  readonly readFileString: (
    path: string,
    encoding?: string
  ) => Effect.Effect<string, PlatformError>
  /**
   * Read the destination of a symbolic link.
   */
  readonly readLink: (
    path: string
  ) => Effect.Effect<string, PlatformError>
  /**
   * Resolve a path to its canonicalized absolute pathname.
   */
  readonly realPath: (
    path: string
  ) => Effect.Effect<string, PlatformError>
  /**
   * Remove a file or directory.
   */
  readonly remove: (
    path: string,
    options?: {
      /**
       * When `true`, you can recursively remove nested directories.
       */
      readonly recursive?: boolean | undefined
      /**
       * When `true`, exceptions will be ignored if `path` does not exist.
       */
      readonly force?: boolean | undefined
    }
  ) => Effect.Effect<void, PlatformError>
  /**
   * Rename a file or directory.
   */
  readonly rename: (
    oldPath: string,
    newPath: string
  ) => Effect.Effect<void, PlatformError>
  /**
   * Create a writable `Sink` for the specified `path`.
   */
  readonly sink: (
    path: string,
    options?: {
      readonly flag?: OpenFlag | undefined
      readonly mode?: number | undefined
    }
  ) => Sink.Sink<void, Uint8Array, never, PlatformError>
  /**
   * Get information about a file at `path`.
   */
  readonly stat: (
    path: string
  ) => Effect.Effect<File.Info, PlatformError>
  /**
   * Create a readable `Stream` for the specified `path`.
   *
   * Changing the `bufferSize` option will change the internal buffer size of
   * the stream. It defaults to `4`.
   *
   * The `chunkSize` option will change the size of the chunks emitted by the
   * stream. It defaults to 64kb.
   *
   * Changing `offset` and `bytesToRead` will change the offset and the number
   * of bytes to read from the file.
   */
  readonly stream: (
    path: string,
    options?: {
      readonly bytesToRead?: SizeInput | undefined
      readonly chunkSize?: SizeInput | undefined
      readonly offset?: SizeInput | undefined
    }
  ) => Stream.Stream<Uint8Array, PlatformError>
  /**
   * Create a symbolic link from `fromPath` to `toPath`.
   */
  readonly symlink: (
    fromPath: string,
    toPath: string
  ) => Effect.Effect<void, PlatformError>
  /**
   * Truncate a file to a specified length. If the `length` is not specified,
   * the file will be truncated to length `0`.
   */
  readonly truncate: (
    path: string,
    length?: SizeInput
  ) => Effect.Effect<void, PlatformError>
  /**
   * Change the file system timestamps of the file at `path`.
   */
  readonly utimes: (
    path: string,
    atime: Date | number,
    mtime: Date | number
  ) => Effect.Effect<void, PlatformError>
  /**
   * Watch a directory or file for changes
   */
  readonly watch: (path: string) => Stream.Stream<WatchEvent, PlatformError>
  /**
   * Write data to a file at `path`.
   */
  readonly writeFile: (
    path: string,
    data: Uint8Array,
    options?: {
      readonly flag?: OpenFlag | undefined
      readonly mode?: number | undefined
    }
  ) => Effect.Effect<void, PlatformError>
  /**
   * Write a string to a file at `path`.
   */
  readonly writeFileString: (
    path: string,
    data: string,
    options?: {
      readonly flag?: OpenFlag | undefined
      readonly mode?: number | undefined
    }
  ) => Effect.Effect<void, PlatformError>
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/FileSystem.ts#L91)

Since v4.0.0