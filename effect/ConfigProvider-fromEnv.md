# fromEnv

A config provider that loads configuration from context variables,
using the default System service.

To import and use `fromEnv` from the "ConfigProvider" module:

```ts
import * as ConfigProvider from 'effect/ConfigProvider'

// Can be accessed like this
ConfigProvider.fromEnv
```

**Signature**

```ts
export declare const fromEnv: (config?: ConfigProvider.FromEnvConfig) => ConfigProvider
```
