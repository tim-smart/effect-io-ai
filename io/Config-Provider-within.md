# within

Returns a new config provider that transforms the config provider with the
specified function within the specified path.

To import and use `within` from the "Provider" module:

```ts
import * as Provider from '@effect/io/Config/Provider'

// Can be accessed like this
Provider.within
```

**Signature**

```ts
export declare const within: {
  (path: ReadonlyArray<string>, f: (self: ConfigProvider) => ConfigProvider): (self: ConfigProvider) => ConfigProvider
  (self: ConfigProvider, path: ReadonlyArray<string>, f: (self: ConfigProvider) => ConfigProvider): ConfigProvider
}
```
