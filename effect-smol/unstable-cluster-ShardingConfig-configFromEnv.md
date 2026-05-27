Package: `effect`<br />
Module: `ShardingConfig`<br />

## ShardingConfig.configFromEnv

Effect that loads `ShardingConfig` from environment variables using the
constant-case config provider.

**Signature**

```ts
declare const configFromEnv: Effect.Effect<{ readonly runnerAddress: Option.Option<RunnerAddress>; readonly runnerListenAddress: Option.Option<RunnerAddress>; readonly runnerShardWeight: number; readonly availableShardGroups: ReadonlyArray<string>; readonly assignedShardGroups: ReadonlyArray<string>; readonly shardsPerGroup: number; readonly shardLockRefreshInterval: Duration.Input; readonly shardLockExpiration: Duration.Input; readonly shardLockDisableAdvisory: boolean; readonly preemptiveShutdown: boolean; readonly entityMailboxCapacity: number | "unbounded"; readonly entityMaxIdleTime: Duration.Input; readonly entityRegistrationTimeout: Duration.Input; readonly entityTerminationTimeout: Duration.Input; readonly entityMessagePollInterval: Duration.Input; readonly entityReplyPollInterval: Duration.Input; readonly refreshAssignmentsInterval: Duration.Input; readonly sendRetryInterval: Duration.Input; readonly runnerHealthCheckInterval: Duration.Input; readonly simulateRemoteSerialization: boolean; }, Config.ConfigError, never>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/ShardingConfig.ts#L351)

Since v4.0.0