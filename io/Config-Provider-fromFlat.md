# fromFlat

Constructs a new `ConfigProvider` from a key/value (flat) provider, where
nesting is embedded into the string keys.

To import and use `fromFlat` from the "Provider" module:

```ts
import * as Provider from '@effect/io/Config/Provider'

// Can be accessed like this
Provider.fromFlat
```

**Signature**

```ts
export declare const fromFlat: (flat: ConfigProvider.Flat) => ConfigProvider
```
