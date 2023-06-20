# fromMap

Constructs a ConfigProvider using a map and the specified delimiter string,
which determines how to split the keys in the map into path segments.

To import and use `fromMap` from the "Provider" module:

```ts
import * as Provider from '@effect/io/Config/Provider'

// Can be accessed like this
Provider.fromMap
```

**Signature**

```ts
export declare const fromMap: (
  map: Map<string, string>,
  config?: Partial<ConfigProvider.FromMapConfig>
) => ConfigProvider
```
