Package: `effect`<br />
Module: `CliConfig`<br />

## CliConfig.make

Creates CLI configuration by merging the provided options over `defaults`.

**When to use**

Use when you need a configuration value to provide directly through the
`CliConfig` context reference.

**See**

- `layer` for providing configuration as a layer

**Signature**

```ts
declare const make: (options?: Partial<CliConfig.Service>) => CliConfig.Service
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/CliConfig.ts#L67)

Since v4.0.0