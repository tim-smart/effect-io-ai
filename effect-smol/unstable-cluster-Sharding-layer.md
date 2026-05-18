Package: `effect`<br />
Module: `Sharding`<br />

## Sharding.layer

Layer that constructs the `Sharding` service from sharding configuration,
runner communication, message storage, runner storage, runner health, the
snowflake generator, and the entity reaper.

**Signature**

```ts
declare const layer: Layer.Layer<Sharding, never, Runners | MessageStorage.MessageStorage | RunnerStorage | ShardingConfig | RunnerHealth.RunnerHealth>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Sharding.ts#L1467)

Since v4.0.0