Package: `@effect/platform-node-shared`<br />
Module: `NodeChildProcessSpawner`<br />

## NodeChildProcessSpawner.flattenCommand

Flattens a `Command` into an array of `StandardCommand`s along with pipe
options for each connection.

**Signature**

```ts
declare const flattenCommand: (command: ChildProcess.Command) => FlattenedPipeline
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/platform-node/src/NodeChildProcessSpawner.ts#L591)

Since v4.0.0