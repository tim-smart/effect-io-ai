# unnested

Returns a new config provider that will automatically un-nest all
configuration under the specified property name. This can be utilized to
de-aggregate separate configuration sources that are all required to load a
single configuration value.

To import and use `unnested` from the "ConfigProvider" module:

```ts
import * as ConfigProvider from '@effect/io/ConfigProvider'

// Can be accessed like this
ConfigProvider.unnested
```

**Signature**

```ts
export declare const unnested: {
  (name: string): (self: ConfigProvider) => ConfigProvider
  (self: ConfigProvider, name: string): ConfigProvider
}
```
