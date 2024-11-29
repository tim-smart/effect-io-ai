# fromConfig

Reads the ShardingConfig from the effect/ConfigProvider

To import and use `fromConfig` from the "ShardingConfig" module:

ts
import \* as ShardingConfig from "@effect/cluster/ShardingConfig"
// Can be accessed like this
ShardingConfig.fromConfig
undefined

**Signature**

```ts
export declare const fromConfig: Layer.Layer<ShardingConfig, ConfigError.ConfigError, never>
```
