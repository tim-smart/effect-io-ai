Package: `@effect/cluster`<br />
Module: `ShardingConfig`<br />

## ShardingConfig.shardGroupConfig

Normalizes the provided `ShardingConfig` to calculate the available and
assigned shard groups.

**Signature**

```ts
declare const shardGroupConfig: (config: ShardingConfig["Type"]) => { readonly available: ReadonlySet<string>; readonly assigned: ReadonlySet<string>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/cluster/src/ShardingConfig.ts#L307)

Since v1.0.0