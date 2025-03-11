## mapInputPath

Returns a new config provider that will automatically tranform all path
configuration names with the specified function. This can be utilized to
adapt the names of configuration properties from one naming convention to
another.

**Signature**

```ts
declare const mapInputPath: { (f: (path: string) => string): (self: ConfigProvider) => ConfigProvider; (self: ConfigProvider, f: (path: string) => string): ConfigProvider; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/ConfigProvider.ts#L233)

Since v2.0.0