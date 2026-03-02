Package: `effect`<br />
Module: `ChildProcess`<br />

## ChildProcess.CommandOutput

Output type for child process stdout/stderr.

**Signature**

```ts
type CommandOutput = | "pipe"
  | "inherit"
  | "ignore"
  | "overlapped"
  | Sink.Sink<Uint8Array, Uint8Array, never, PlatformError.PlatformError>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/ChildProcess.ts#L192)

Since v4.0.0