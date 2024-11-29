# fromMap

Constructs a ConfigProvider using a map and the specified delimiter string,
which determines how to split the keys in the map into path segments.

To import and use `fromMap` from the "ConfigProvider" module:

ts
import \* as ConfigProvider from "effect/ConfigProvider"
// Can be accessed like this
ConfigProvider.fromMap
undefined

**Signature**

```ts
export declare const fromMap: (
  map: Map<string, string>,
  config?: Partial<ConfigProvider.FromMapConfig>
) => ConfigProvider
```
