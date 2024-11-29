# fromConfig

Reads the ManagerConfig from the provided Config.

To import and use `fromConfig` from the "ManagerConfig" module:

ts
import \* as ManagerConfig from "@effect/cluster/ManagerConfig"
// Can be accessed like this
ManagerConfig.fromConfig
undefined

**Signature**

```ts
export declare const fromConfig: Layer.Layer<ManagerConfig, ConfigError.ConfigError, never>
```
