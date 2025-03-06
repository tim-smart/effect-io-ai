# fromEnv

A config provider that loads configuration from context variables

**Options**:

- `pathDelim`: The delimiter for the path segments (default: `"_"`).
- `seqDelim`: The delimiter for the sequence of values (default: `","`).

To import and use `fromEnv` from the "ConfigProvider" module:

```ts
import * as ConfigProvider from "effect/ConfigProvider"
// Can be accessed like this
ConfigProvider.fromEnv
```

**Signature**

```ts
export declare const fromEnv: (options?: Partial<ConfigProvider.FromEnvConfig>) => ConfigProvider
```
