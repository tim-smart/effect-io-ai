Package: `effect`<br />
Module: `ChildProcess`<br />

## ChildProcess.Command

A command that can be executed as a child process.

Commands are built using `make` and can be combined using `pipeTo`.
They are executed using `exec` or `spawn`.

**Signature**

```ts
type Command = | StandardCommand
  | PipedCommand
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/ChildProcess.ts#L66)

Since v4.0.0