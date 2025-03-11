## nested

Returns a new config provider that will automatically nest all
configuration under the specified property name. This can be utilized to
aggregate separate configuration sources that are all required to load a
single configuration value.

**Signature**

```ts
declare const nested: { (name: string): (self: ConfigProvider) => ConfigProvider; (self: ConfigProvider, name: string): ConfigProvider; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/ConfigProvider.ts#L269)

Since v2.0.0