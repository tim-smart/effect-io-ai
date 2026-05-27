Package: `effect`<br />
Module: `Sharding`<br />

## Sharding.layer

Layer that constructs the `Sharding` service from sharding configuration,
runner communication, message storage, runner storage, runner health, the
snowflake generator, and the entity reaper.

**When to use**

Use when assembling a cluster sharding runtime from explicit sharding
configuration, runner communication, message storage, runner storage, and
runner health layers.

**Details**

The layer provides the `Sharding` service and installs its own snowflake
generator and entity reaper. Callers still provide `ShardingConfig`,
`Runners`, `MessageStorage`, `RunnerStorage`, and `RunnerHealth`.

**Gotchas**

Persisted messages require a non-no-op `MessageStorage`; if this layer is
provided with `MessageStorage.layerNoop`, persisted sends defect.

**See**

- `Sharding` for the service provided by this layer

**Signature**

```ts
declare const layer: Layer.Layer<Sharding, never, Runners | MessageStorage.MessageStorage | RunnerStorage | ShardingConfig | RunnerHealth.RunnerHealth>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Sharding.ts#L1505)

Since v4.0.0