Package: `effect`<br />
Module: `ChildProcess`<br />

## ChildProcess.KillOptions

Options that can be used to control how a child process is terminated.

**Signature**

```ts
export interface KillOptions {
  /**
   * The default signal used to terminate the child process.
   *
   * Defaults to `"SIGTERM"`.
   */
  readonly killSignal?: Signal | undefined
  /**
   * The duration of time to wait after the child process has been terminated
   * before forcefully killing the child process by sending it the `"SIGKILL"`
   * signal.
   *
   * Defaults to `undefined`, which means that no timeout will be enforced by
   * default.
   */
  readonly forceKillAfter?: Duration.Input | undefined
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/ChildProcess.ts#L270)

Since v4.0.0