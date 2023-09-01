# upperCase

Returns a new config provider that will automatically convert all property
names to upper case. This can be utilized to adapt the names of
configuration properties from the default naming convention of camel case
to the naming convention of a config provider.

To import and use `upperCase` from the "ConfigProvider" module:

```ts
import * as ConfigProvider from '@effect/io/ConfigProvider'

// Can be accessed like this
ConfigProvider.upperCase
```

**Signature**

```ts
export declare const upperCase: (self: ConfigProvider) => ConfigProvider
```
