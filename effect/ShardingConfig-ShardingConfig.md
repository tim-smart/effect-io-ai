## ShardingConfig

Sharding configuration

**Signature**

```ts
export interface ShardingConfig {
  readonly numberOfShards: number
  readonly selfHost: string
  readonly shardingPort: number
  readonly shardManagerUri: string
  readonly serverVersion: string
  readonly entityMaxIdleTime: Duration.Duration
  readonly entityTerminationTimeout: Duration.Duration
  readonly refreshAssignmentsRetryInterval: Duration.Duration
  readonly unhealthyPodReportInterval: Duration.Duration
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/cluster/src/ShardingConfig.ts#L36)

Since v1.0.0