Package: `effect`<br />
Module: `SqlRunnerStorage`<br />

## SqlRunnerStorage.make

Creates a SQL-backed `RunnerStorage` implementation for registered runners and
shard locks, using the configured table prefix and advisory locks where
supported and enabled.

**Signature**

```ts
declare const make: (options: { readonly prefix?: string | undefined; }) => Effect.Effect<{ readonly register: (runner: Runner, healthy: boolean) => Effect.Effect<MachineId, PersistenceError>; readonly unregister: (address: RunnerAddress) => Effect.Effect<void, PersistenceError>; readonly getRunners: Effect.Effect<Array<readonly [runner: Runner, healthy: boolean]>, PersistenceError>; readonly setRunnerHealth: (address: RunnerAddress, healthy: boolean) => Effect.Effect<void, PersistenceError>; readonly acquire: (address: RunnerAddress, shardIds: Iterable<ShardId.ShardId>) => Effect.Effect<Array<ShardId.ShardId>, PersistenceError>; readonly refresh: (address: RunnerAddress, shardIds: Iterable<ShardId.ShardId>) => Effect.Effect<Array<ShardId.ShardId>, PersistenceError>; readonly release: (address: RunnerAddress, shardId: ShardId.ShardId) => Effect.Effect<void, PersistenceError>; readonly releaseAll: (address: RunnerAddress) => Effect.Effect<void, PersistenceError>; }, SqlError, Scope.Scope | SqlClient.SqlClient | ShardingConfig.ShardingConfig>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SqlRunnerStorage.ts#L57)

Since v4.0.0