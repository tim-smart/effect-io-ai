Package: `effect`<br />
Module: `ChildProcess`<br />

## ChildProcess.AdditionalFdConfig

Configuration for additional file descriptors to expose to the child process.

**Signature**

```ts
type AdditionalFdConfig = | {
    /**
     * The direction of data flow for this file descriptor.
     * - "input": Data flows from parent to child (writable by parent)
     * - "output": Data flows from child to parent (readable by parent)
     */
    readonly type: "input"
    /**
     * For input file descriptors, an optional stream to pipe into the file
     * descriptor..
     */
    readonly stream?: Stream.Stream<Uint8Array, PlatformError.PlatformError> | undefined
  }
  | {
    /**
     * The direction of data flow for this file descriptor.
     * - "input": Data flows from parent to child (writable by parent)
     * - "output": Data flows from child to parent (readable by parent)
     */
    readonly type: "output"
    /**
     * For output file descriptors, an optional sink which receives data from
     * the file descriptor.
     */
    readonly sink?: Sink.Sink<Uint8Array, Uint8Array, never, PlatformError.PlatformError> | undefined
  }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/ChildProcess.ts#L370)

Since v4.0.0