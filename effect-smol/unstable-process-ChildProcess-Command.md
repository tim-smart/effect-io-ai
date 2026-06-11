Package: `effect`<br />
Module: `ChildProcess`<br />

## ChildProcess.Command

A command that can be built using `make`, combined using `pipeTo`, and executed using `exec` or `spawn`.

**Signature**

```ts
type Command = | StandardCommand
  | PipedCommand
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/ChildProcess.ts#L32)

Since v4.0.0