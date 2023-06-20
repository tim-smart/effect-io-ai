# unnested

Returns a new config provider that will automatically un-nest all
configuration under the specified property name. This can be utilized to
de-aggregate separate configuration sources that are all required to load a
single configuration value.

To import and use `unnested` from the "Provider" module:

```ts
import * as Provider from '@effect/io/Config/Provider'

// Can be accessed like this
Provider.unnested
```

**Signature**

```ts
export declare const unnested: {
  (name: string): (self: ConfigProvider) => ConfigProvider
  (self: ConfigProvider, name: string): ConfigProvider
}
```
