Package: `effect`<br />
Module: `ChildProcess`<br />

## ChildProcess.StandardCommand

A standard command with pre-parsed command and arguments.

**Signature**

```ts
export interface StandardCommand extends
  Pipeable,
  Effect.Yieldable<
    StandardCommand,
    ChildProcessHandle,
    PlatformError.PlatformError,
    ChildProcessSpawner | Scope.Scope
  >
{
  readonly _tag: "StandardCommand"
  readonly command: string
  readonly args: ReadonlyArray<string>
  readonly options: CommandOptions
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/ChildProcess.ts#L76)

Since v4.0.0