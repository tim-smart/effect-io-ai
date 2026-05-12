Package: `effect`<br />
Module: `Command`<br />

## Command.Command.Any

Represents any Command regardless of its type parameters.

**Signature**

```ts
export interface Any extends Effect.Effect<any, never, any> {
    readonly [TypeId]: any
    readonly name: string
    readonly description: string | undefined
    readonly shortDescription: string | undefined
    readonly alias: string | undefined
    readonly examples: ReadonlyArray<Command.Example>
    readonly subcommands: ReadonlyArray<{
      readonly group: string | undefined
      readonly commands: NonEmptyReadonlyArray<Command.Any>
    }>
    readonly annotations: Context.Context<never>
  }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Command.ts#L272)

Since v4.0.0