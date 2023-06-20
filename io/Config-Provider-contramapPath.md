# contramapPath

Returns a new config provider that will automatically tranform all path
configuration names with the specified function. This can be utilized to
adapt the names of configuration properties from one naming convention to
another.

To import and use `contramapPath` from the "Provider" module:

```ts
import * as Provider from '@effect/io/Config/Provider'

// Can be accessed like this
Provider.contramapPath
```

**Signature**

```ts
export declare const contramapPath: {
  (f: (path: string) => string): (self: ConfigProvider) => ConfigProvider
  (self: ConfigProvider, f: (path: string) => string): ConfigProvider
}
```
