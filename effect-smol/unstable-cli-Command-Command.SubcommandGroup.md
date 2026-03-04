Package: `effect`<br />
Module: `Command`<br />

## Command.Command.SubcommandGroup

A grouped set of subcommands used by `Command.withSubcommands`.

**Signature**

```ts
export interface SubcommandGroup<Commands extends ReadonlyArray<Any> = ReadonlyArray<Any>> {
    readonly group: string
    readonly commands: Commands
  }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Command.ts#L273)

Since v4.0.0