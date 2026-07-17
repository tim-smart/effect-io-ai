Package: `effect`<br />
Module: `CliConfig`<br />

## CliConfig.layer

Creates a layer that provides CLI configuration merged over `defaults`.

**When to use**

Use when wiring customized CLI behavior into an application layer.

**See**

- `make` for creating a configuration value directly

**Signature**

```ts
declare const layer: (options?: Partial<CliConfig.Service>) => Layer.Layer<never>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/CliConfig.ts#L84)

Since v4.0.0