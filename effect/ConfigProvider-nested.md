# nested

Returns a new config provider that will automatically nest all
configuration under the specified property name. This can be utilized to
aggregate separate configuration sources that are all required to load a
single configuration value.

To import and use `nested` from the "ConfigProvider" module:

```ts
import * as ConfigProvider from 'effect/ConfigProvider'

// Can be accessed like this
ConfigProvider.nested
```

**Signature**

```ts
export declare const nested: {
  (name: string): (self: ConfigProvider) => ConfigProvider
  (self: ConfigProvider, name: string): ConfigProvider
}
```
