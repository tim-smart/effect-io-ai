# fromFlat

Constructs a new `ConfigProvider` from a key/value (flat) provider, where
nesting is embedded into the string keys.

To import and use `fromFlat` from the "ConfigProvider" module:

ts
import \* as ConfigProvider from "effect/ConfigProvider"
// Can be accessed like this
ConfigProvider.fromFlat
undefined

**Signature**

```ts
export declare const fromFlat: (flat: ConfigProvider.Flat) => ConfigProvider
```
