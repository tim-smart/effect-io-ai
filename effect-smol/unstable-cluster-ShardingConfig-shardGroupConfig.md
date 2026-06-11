Package: `effect`<br />
Module: `ShardingConfig`<br />

## ShardingConfig.shardGroupConfig

Normalizes the provided `ShardingConfig` to calculate the `available` and
`assigned` shard groups.

**Signature**

```ts
declare const shardGroupConfig: (config: ShardingConfig["Service"]) => { readonly available: ReadonlySet<string>; readonly assigned: ReadonlySet<string>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/ShardingConfig.ts#L355)

Since v4.0.0