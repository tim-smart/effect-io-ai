Package: `@effect/platform-node-shared`<br />
Module: `NodeChildProcessSpawner`<br />

## NodeChildProcessSpawner.FlattenedPipeline

Result of flattening a pipeline of commands.

**Signature**

```ts
export interface FlattenedPipeline {
  readonly commands: Arr.NonEmptyReadonlyArray<ChildProcess.StandardCommand>
  readonly pipeOptions: ReadonlyArray<ChildProcess.PipeOptions>
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/platform-node/src/NodeChildProcessSpawner.ts#L579)

Since v4.0.0