Package: `effect`<br />
Module: `ConfigProvider`<br />

## ConfigProvider.upperCase

Returns a new config provider that will automatically convert all property
names to upper case. This can be utilized to adapt the names of
configuration properties from the default naming convention of camel case
to the naming convention of a config provider.

**Signature**

```ts
declare const upperCase: (self: ConfigProvider) => ConfigProvider
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/ConfigProvider.ts#L321)

Since v2.0.0