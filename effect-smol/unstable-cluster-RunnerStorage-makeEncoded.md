Package: `effect`<br />
Module: `RunnerStorage`<br />

## RunnerStorage.makeEncoded

Adapts an encoded runner storage implementation into `RunnerStorage`, converting
runner addresses, runners, machine ids, and shard ids between typed values and
their string or numeric storage forms.

**Signature**

```ts
declare const makeEncoded: (encoded: Encoded) => { readonly register: (runner: Runner, healthy: boolean) => Effect.Effect<MachineId.MachineId, PersistenceError>; readonly unregister: (address: RunnerAddress) => Effect.Effect<void, PersistenceError>; readonly getRunners: Effect.Effect<Array<readonly [runner: Runner, healthy: boolean]>, PersistenceError>; readonly setRunnerHealth: (address: RunnerAddress, healthy: boolean) => Effect.Effect<void, PersistenceError>; readonly acquire: (address: RunnerAddress, shardIds: Iterable<ShardId.ShardId>) => Effect.Effect<Array<ShardId.ShardId>, PersistenceError>; readonly refresh: (address: RunnerAddress, shardIds: Iterable<ShardId.ShardId>) => Effect.Effect<Array<ShardId.ShardId>, PersistenceError>; readonly release: (address: RunnerAddress, shardId: ShardId.ShardId) => Effect.Effect<void, PersistenceError>; readonly releaseAll: (address: RunnerAddress) => Effect.Effect<void, PersistenceError>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/RunnerStorage.ts#L151)

Since v4.0.0