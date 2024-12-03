# lowerCase

Returns a new config provider that will automatically convert all property
names to lower case. This can be utilized to adapt the names of
configuration properties from the default naming convention of camel case
to the naming convention of a config provider.

To import and use `lowerCase` from the "ConfigProvider" module:

```ts
import * as ConfigProvider from "effect/ConfigProvider"
// Can be accessed like this
ConfigProvider.lowerCase
```

**Signature**

```ts
export declare const lowerCase: (self: ConfigProvider) => ConfigProvider
```
