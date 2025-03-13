Package: `effect`<br />
Module: `ConfigProvider`<br />

## ConfigProvider.orElse

Returns a new config provider that preferentially loads configuration data
from this one, but which will fall back to the specified alternate provider
if there are any issues loading the configuration from this provider.

**Signature**

```ts
declare const orElse: { (that: LazyArg<ConfigProvider>): (self: ConfigProvider) => ConfigProvider; (self: ConfigProvider, that: LazyArg<ConfigProvider>): ConfigProvider; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/ConfigProvider.ts#L282)

Since v2.0.0