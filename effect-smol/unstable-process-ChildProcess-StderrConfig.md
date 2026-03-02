Package: `effect`<br />
Module: `ChildProcess`<br />

## ChildProcess.StderrConfig

Configuration for the child process standard error stream.

**Signature**

```ts
export interface StderrConfig {
  /**
   * The configuration for the standard ouput stream of the child process.
   *
   * Can be a string indicating how the operating system should configure the
   * pipe established between the child process `stderr` and the parent process.
   *
   * A `Sink` can also be passed, which will receive all elements produced by
   * the `stderr` of the child process.
   *
   * Defaults to "pipe".
   */
  readonly stream?: CommandOutput | undefined
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/ChildProcess.ts#L349)

Since v4.0.0