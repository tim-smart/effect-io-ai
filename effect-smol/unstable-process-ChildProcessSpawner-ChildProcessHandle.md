Package: `effect`<br />
Module: `ChildProcessSpawner`<br />

## ChildProcessSpawner.ChildProcessHandle

A handle to a running child process.

**Signature**

```ts
export interface ChildProcessHandle {
  readonly [HandleTypeId]: typeof HandleTypeId
  /**
   * The child process process identifier.
   */
  readonly pid: ProcessId
  /**
   * Waits for the child process to exit and returns the `ExitCode` of the
   * command that was run.
   */
  readonly exitCode: Effect.Effect<ExitCode, PlatformError.PlatformError>
  /**
   * Returns `true` if the child process is still running, otherwise returns
   * `false`.
   */
  readonly isRunning: Effect.Effect<boolean, PlatformError.PlatformError>
  /**
   * Kills the child process with the provided signal.
   *
   * If no signal option is provided, the signal defaults to `SIGTERM`.
   */
  readonly kill: (options?: KillOptions | undefined) => Effect.Effect<void, PlatformError.PlatformError>
  /**
   * The standard input sink for the child process.
   */
  readonly stdin: Sink.Sink<void, Uint8Array, never, PlatformError.PlatformError>
  /**
   * The standard output stream for the child process.
   *
   * Note: Using alongside `all` may cause interleaving of output and unexpected
   * results.
   */
  readonly stdout: Stream.Stream<Uint8Array, PlatformError.PlatformError>
  /**
   * The standard error stream for the child process.
   *
   * Note: Using alongside `all` may cause interleaving of output and unexpected
   * results.
   */
  readonly stderr: Stream.Stream<Uint8Array, PlatformError.PlatformError>
  /**
   * A stream which combines and interleaves all messages output by the child
   * process `stdout` and `stderr` streams.
   */
  readonly all: Stream.Stream<Uint8Array, PlatformError.PlatformError>
  /**
   * Get an input `Sink` for writing to a file descriptor configured via
   * `ChildProcessOptions.additionalFds`.
   *
   * If a file descriptor is accessed that was not configured, returns a drain
   * `Sink`.
   */
  readonly getInputFd: (fd: number) => Sink.Sink<void, Uint8Array, never, PlatformError.PlatformError>
  /**
   * Get an output `Stream` for reading from a file descriptor configured via
   * `ChildProcessOptions.additionalFds`.
   *
   * If a file descriptor is accessed that was not configured, returns an empty
   * `Stream`.
   */
  readonly getOutputFd: (fd: number) => Stream.Stream<Uint8Array, PlatformError.PlatformError>
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/ChildProcessSpawner.ts#L51)

Since v4.0.0