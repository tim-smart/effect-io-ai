# fromEnv

A config provider that loads configuration from context variables,
using the default System service.

To import and use `fromEnv` from the "Provider" module:

```ts
import * as Provider from '@effect/io/Config/Provider'

// Can be accessed like this
Provider.fromEnv
```

**Signature**

```ts
export declare const fromEnv: (config?: ConfigProvider.FromEnvConfig) => ConfigProvider
```
