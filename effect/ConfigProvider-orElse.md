# orElse

Returns a new config provider that preferentially loads configuration data
from this one, but which will fall back to the specified alternate provider
if there are any issues loading the configuration from this provider.

To import and use `orElse` from the "ConfigProvider" module:

```ts
import * as ConfigProvider from "effect/ConfigProvider"
// Can be accessed like this
ConfigProvider.orElse
```

**Signature**

```ts
export declare const orElse: {
  (that: LazyArg<ConfigProvider>): (self: ConfigProvider) => ConfigProvider
  (self: ConfigProvider, that: LazyArg<ConfigProvider>): ConfigProvider
}
```
