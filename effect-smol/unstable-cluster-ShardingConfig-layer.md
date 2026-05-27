Package: `effect`<br />
Module: `ShardingConfig`<br />

## ShardingConfig.layer

Creates a `ShardingConfig` layer by merging the provided partial options over
`defaults`.

**When to use**

Use when wiring a cluster runner with explicit `ShardingConfig` values,
especially in tests, local development, or code paths where configuration
should be provided programmatically instead of loaded from environment
variables.

**Details**

The merge is shallow: omitted fields use `defaults`, and provided fields
replace the corresponding default value.

**Gotchas**

This layer only merges and provides configuration; it does not check that
cluster-wide settings are consistent across runners. Keep values such as
`shardsPerGroup` and `availableShardGroups` aligned for runners that should
share shard assignments.

**See**

- `defaults` for the values used when an option is omitted
- `layerDefaults` for a layer with no overrides
- `layerFromEnv` for loading configuration from environment variables before applying explicit overrides

**Signature**

```ts
declare const layer: (options?: Partial<ShardingConfig["Service"]>) => Layer.Layer<ShardingConfig>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/ShardingConfig.ts#L230)

Since v4.0.0