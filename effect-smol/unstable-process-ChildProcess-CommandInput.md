Package: `effect`<br />
Module: `ChildProcess`<br />

## ChildProcess.CommandInput

Input type for child process stdin.

**Signature**

```ts
type CommandInput = | "pipe"
  | "inherit"
  | "ignore"
  | "overlapped"
  | Stream.Stream<Uint8Array, PlatformError.PlatformError>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/ChildProcess.ts#L179)

Since v4.0.0