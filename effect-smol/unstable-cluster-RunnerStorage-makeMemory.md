Package: `effect`<br />
Module: `RunnerStorage`<br />

## RunnerStorage.makeMemory

Creates an in-memory `RunnerStorage` implementation for tests and local use.

Registered runners are treated as healthy and shard acquisition is kept only in
process memory.

**Signature**

```ts
declare const makeMemory: Effect.Effect<{ readonly register: (runner: Runner, healthy: boolean) => Effect.Effect<MachineId.MachineId, PersistenceError>; readonly unregister: (address: RunnerAddress) => Effect.Effect<void, PersistenceError>; readonly getRunners: Effect.Effect<Array<readonly [runner: Runner, healthy: boolean]>, PersistenceError>; readonly setRunnerHealth: (address: RunnerAddress, healthy: boolean) => Effect.Effect<void, PersistenceError>; readonly acquire: (address: RunnerAddress, shardIds: Iterable<ShardId.ShardId>) => Effect.Effect<Array<ShardId.ShardId>, PersistenceError>; readonly refresh: (address: RunnerAddress, shardIds: Iterable<ShardId.ShardId>) => Effect.Effect<Array<ShardId.ShardId>, PersistenceError>; readonly release: (address: RunnerAddress, shardId: ShardId.ShardId) => Effect.Effect<void, PersistenceError>; readonly releaseAll: (address: RunnerAddress) => Effect.Effect<void, PersistenceError>; }, never, never>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/RunnerStorage.ts#L217)

Since v4.0.0