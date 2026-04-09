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
  /**
   * Allows the parent process to exit independently of this child process.
   *
   * Running this `Effect` removes this child process from the parent process's
   * reference count, so the parent process is allowed to exit without waiting
   * for the child process to finish.
   *
   * The returned `Reref` effect adds the child process back into the parent
   * process's reference count when run, restoring the default behavior.
   *
   * This is the only supported way to re-reference a child process after it
   * has been unrefed.
   *
   * @example
   * ```ts
   * import { NodeServices } from "@effect/platform-node"
   * import { Effect } from "effect"
   * import { ChildProcess } from "effect/unstable/process"
   *
   * const program = Effect.gen(function*() {
   *   const handle = yield* ChildProcess.make`./server`
   *   const reref = yield* handle.unref
   *
   *   yield* Effect.sleep("1 second")
   *
   *   yield* reref
   *   return yield* handle.exitCode
   * }).pipe(Effect.scoped, Effect.provide(NodeServices.layer))
   * ```
   */
  readonly unref: Effect.Effect<Reref, PlatformError.PlatformError>
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/ChildProcessSpawner.ts#L64)

Since v4.0.0