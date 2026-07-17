Package: `effect`<br />
Module: `CliConfig`<br />

## CliConfig.CliConfig.Service

Configuration values used while running a CLI command.

**Signature**

```ts
export interface Service {
    /** Ordered built-in global flags, with earlier action flags taking precedence. */
    readonly builtIns: ReadonlyArray<GlobalFlag.BuiltIn>
  }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/CliConfig.ts#L38)

Since v4.0.0