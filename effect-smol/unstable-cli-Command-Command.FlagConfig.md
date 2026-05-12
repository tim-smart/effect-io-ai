Package: `effect`<br />
Module: `Command`<br />

## Command.Command.FlagConfig

Configuration shape accepted by `Command.withSharedFlags`.

Only flags are allowed here; arguments are intentionally excluded.

**Signature**

```ts
export interface FlagConfig {
    readonly [key: string]:
      | Param.Param<typeof Param.flagKind, any>
      | ReadonlyArray<Param.Param<typeof Param.flagKind, any> | FlagConfig>
      | FlagConfig
  }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Command.ts#L204)

Since v4.0.0