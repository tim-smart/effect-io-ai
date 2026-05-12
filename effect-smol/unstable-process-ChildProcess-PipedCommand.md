Package: `effect`<br />
Module: `ChildProcess`<br />

## ChildProcess.PipedCommand

A pipeline of commands where the output of one is piped to the input of the
next.

**Signature**

```ts
export interface PipedCommand extends
  Effect.Effect<
    ChildProcessHandle,
    PlatformError.PlatformError,
    ChildProcessSpawner | Scope.Scope
  >
{
  readonly _tag: "PipedCommand"
  readonly left: Command
  readonly right: Command
  readonly options: PipeOptions
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/ChildProcess.ts#L96)

Since v4.0.0