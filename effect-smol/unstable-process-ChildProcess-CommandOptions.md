Package: `effect`<br />
Module: `ChildProcess`<br />

## ChildProcess.CommandOptions

Options for command execution.

**Signature**

```ts
export interface CommandOptions extends KillOptions {
  /**
   * The current working directory of the child process.
   */
  readonly cwd?: string | undefined
  /**
   * The environment of the child process.
   *
   * If `extendEnv` is set to `true`, the value of `env` will be merged with
   * the value of `globalThis.process.env`, prioritizing the values in `env`
   * when conflicts exist.
   */
  readonly env?: Record<string, string | undefined> | undefined
  /**
   * If set to `true`, the child process uses both the values in `env` as well
   * as the values in `globalThis.process.env`, prioritizing the values in `env`
   * when conflicts exist.
   *
   * If set to `false`, only the value of `env` is used.
   */
  readonly extendEnv?: boolean | undefined
  /**
   * If set to `true`, runs the command inside of a shell, defaulting to `/bin/sh`
   * on UNIX systems and `cmd.exe` on Windows.
   *
   * Can also be set to a string representing the absolute path to a shell to
   * use on the system.
   *
   * It is generally disadvised to use this option.
   */
  readonly shell?: boolean | string | undefined
  /**
   * If set to `true`, the child process will run independently of the parent
   * process.
   *
   * The specific behavior of this option depends upon the platform. For
   * example, the NodeJS documentation outlines the differences between Windows
   * and non-Windows platforms.
   *
   * See https://nodejs.org/api/child_process.html#child_process_options_detached.
   *
   * Defaults to `true` on non-Windows platforms and `false` on Windows platforms.
   */
  readonly detached?: boolean | undefined
  /**
   * Configuration options for the standard input stream for the child process.
   */
  readonly stdin?: CommandInput | StdinConfig | undefined
  /**
   * Configuration options for the standard output stream for the child process.
   */
  readonly stdout?: CommandOutput | StdoutConfig | undefined
  /**
   * Configuration options for the standard error stream for the child process.
   */
  readonly stderr?: CommandOutput | StderrConfig | undefined
  /**
   * Additional file descriptors to expose to the child process beyond `stdin` /
   * `stdout` / `stderr`.
   *
   * Keys must be in the format `"fd3"`, `"fd4"`, etc. with a file descriptor
   * index >= 3.
   *
   * The file descriptor index is determined by the numeric suffix (i.e. `fd3`
   * has a file descriptor index of 3).
   *
   * @example
   * ```ts
   * import { ChildProcess } from "effect/unstable/process"
   *
   * // Output fd3 - read data from child
   * const cmd1 = ChildProcess.make("my-program", [], {
   *   additionalFds: {
   *     fd3: { type: "output" }
   *   }
   * })
   *
   * // Input fd3 - write data to child
   * const cmd2 = ChildProcess.make("my-program", [], {
   *   additionalFds: {
   *     fd3: { type: "input" }
   *   }
   * })
   * ```
   */
  readonly additionalFds?: Record<`fd${number}`, AdditionalFdConfig> | undefined
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/ChildProcess.ts#L404)

Since v4.0.0