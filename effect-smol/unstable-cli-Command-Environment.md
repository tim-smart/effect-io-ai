Package: `effect`<br />
Module: `Command`<br />

## Command.Environment

The environment required by CLI commands, including file system and path operations.

**Signature**

```ts
type Environment = FileSystem.FileSystem | Path.Path | Terminal.Terminal | ChildProcessSpawner | Stdio.Stdio
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Command.ts#L293)

Since v4.0.0