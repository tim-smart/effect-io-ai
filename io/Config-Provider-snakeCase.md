# snakeCase

Returns a new config provider that will automatically convert all property
names to upper case. This can be utilized to adapt the names of
configuration properties from the default naming convention of camel case
to the naming convention of a config provider.

To import and use `snakeCase` from the "Provider" module:

```ts
import * as Provider from '@effect/io/Config/Provider'

// Can be accessed like this
Provider.snakeCase
```

**Signature**

```ts
export declare const snakeCase: (self: ConfigProvider) => ConfigProvider
```
