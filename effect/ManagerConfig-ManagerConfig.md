## ManagerConfig

This is the Shard Manager configuration.

**Signature**

```ts
export interface ManagerConfig {
  readonly numberOfShards: number
  readonly apiPort: number
  readonly rebalanceInterval: Duration.Duration
  readonly rebalanceRetryInterval: Duration.Duration
  readonly pingTimeout: Duration.Duration
  readonly persistRetryInterval: Duration.Duration
  readonly persistRetryCount: number
  readonly rebalanceRate: number
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/cluster/src/ManagerConfig.ts#L36)

Since v1.0.0