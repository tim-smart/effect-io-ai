## fromEnv

A config provider that loads configuration from context variables

**Options**:

- `pathDelim`: The delimiter for the path segments (default: `"_"`).
- `seqDelim`: The delimiter for the sequence of values (default: `","`).

**Signature**

```ts
declare const fromEnv: (options?: Partial<ConfigProvider.FromEnvConfig>) => ConfigProvider
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/ConfigProvider.ts#L183)

Since v2.0.0