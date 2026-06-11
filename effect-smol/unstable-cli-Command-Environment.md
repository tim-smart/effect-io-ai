Package: `effect`<br />
Module: `Command`<br />

## Command.Environment

Services required by CLI parsing and execution.

**Details**

This includes file-system and path services for arguments, terminal and
stdio services for running commands, and child-process spawning for
process-related CLI features.

**Signature**

```ts
type Environment = FileSystem.FileSystem | Path.Path | Terminal.Terminal | ChildProcessSpawner | Stdio.Stdio
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Command.ts#L355)

Since v4.0.0