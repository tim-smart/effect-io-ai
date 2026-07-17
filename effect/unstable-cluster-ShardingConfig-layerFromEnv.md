Package: `effect`<br />
Module: `ShardingConfig`<br />

## ShardingConfig.layerFromEnv

Layer that loads `ShardingConfig` from environment variables and, when options
are provided, overlays those options on top of the loaded values.

**Signature**

```ts
declare const layerFromEnv: (options?: Partial<ShardingConfig["Service"]> | undefined) => Layer.Layer<ShardingConfig, Config.ConfigError>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/ShardingConfig.ts#L340)

Since v4.0.0