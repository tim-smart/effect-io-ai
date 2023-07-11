# mapInputPath

Returns a new config provider that will automatically tranform all path
configuration names with the specified function. This can be utilized to
adapt the names of configuration properties from one naming convention to
another.

To import and use `mapInputPath` from the "Provider" module:

```ts
import * as Provider from '@effect/io/Config/Provider'

// Can be accessed like this
Provider.mapInputPath
```

**Signature**

```ts
export declare const mapInputPath: {
  (f: (path: string) => string): (self: ConfigProvider) => ConfigProvider
  (self: ConfigProvider, f: (path: string) => string): ConfigProvider
}
```
