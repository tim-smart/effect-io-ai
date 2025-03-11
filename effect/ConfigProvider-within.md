## within

Returns a new config provider that transforms the config provider with the
specified function within the specified path.

**Signature**

```ts
declare const within: { (path: ReadonlyArray<string>, f: (self: ConfigProvider) => ConfigProvider): (self: ConfigProvider) => ConfigProvider; (self: ConfigProvider, path: ReadonlyArray<string>, f: (self: ConfigProvider) => ConfigProvider): ConfigProvider; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/ConfigProvider.ts#L330)

Since v2.0.0