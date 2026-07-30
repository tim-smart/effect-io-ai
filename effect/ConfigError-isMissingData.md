Package: `effect`<br />
Module: `ConfigError`<br />

## ConfigError.isMissingData

Returns `true` if the specified `ConfigError` is an `MissingData`, `false`
otherwise.

**Signature**

```ts
declare const isMissingData: (self: ConfigError) => self is MissingData
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/ConfigError.ts#L226)

Since v2.0.0