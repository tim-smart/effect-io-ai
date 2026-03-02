Package: `effect`<br />
Module: `Command`<br />

## Command.Environment

The environment required by CLI commands, including file system and path operations.

**Signature**

```ts
type Environment = FileSystem.FileSystem | Path.Path | Terminal.Terminal | ChildProcessSpawner
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Command.ts#L275)

Since v4.0.0