# withDefaults

Provides the ShardingConfig, values that are omitted will be read from the defaults

To import and use `withDefaults` from the "ShardingConfig" module:

```ts
import * as ShardingConfig from "@effect/cluster/ShardingConfig"
// Can be accessed like this
ShardingConfig.withDefaults
```

**Signature**

```ts
export declare const withDefaults: (customs: Partial<ShardingConfig>) => Layer.Layer<ShardingConfig>
```
