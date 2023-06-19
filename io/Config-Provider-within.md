# within

Returns a new config provider that transforms the config provider with the
specified function within the specified path.

Part of the `Provider` module, imported from `@effect/io/Config/Provider`.

**Signature**

```ts
export declare const within: {
  (path: Array<string>, f: (self: ConfigProvider) => ConfigProvider): (self: ConfigProvider) => ConfigProvider
  (self: ConfigProvider, path: Array<string>, f: (self: ConfigProvider) => ConfigProvider): ConfigProvider
}
```
