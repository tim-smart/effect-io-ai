Package: `effect`<br />
Module: `ChildProcess`<br />

## ChildProcess.StdinConfig

Configuration for the child process standard input stream.

**Signature**

```ts
export interface StdinConfig {
  /**
   * The configuration for the standard input stream of the child process.
   *
   * Can be a string indicating how the operating system should configure the
   * pipe established between the child process `stdin` and the parent process.
   *
   * Can also be a `Stream`, which will pipe all elements produced into the
   * `stdin` of the child process.
   *
   * Defaults to "pipe".
   */
  readonly stream: CommandInput
  /**
   * Whether or not the child process `stdin` should be closed after the input
   * stream is finished.
   *
   * Defaults to `true`.
   */
  readonly endOnDone?: boolean | undefined
  /**
   * The buffer encoding to use to decode string chunks.
   *
   * Defaults to `utf-8`.
   */
  readonly encoding?: Encoding | undefined
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/ChildProcess.ts#L290)

Since v4.0.0