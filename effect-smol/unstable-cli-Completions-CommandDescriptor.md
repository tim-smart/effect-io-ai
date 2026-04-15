Package: `effect`<br />
Module: `Completions`<br />

## Completions.CommandDescriptor

Describes a command for completion script generation.

**Signature**

```ts
export interface CommandDescriptor {
  readonly name: string
  readonly description: string | undefined
  readonly flags: ReadonlyArray<FlagDescriptor>
  readonly arguments: ReadonlyArray<ArgumentDescriptor>
  readonly subcommands: ReadonlyArray<CommandDescriptor>
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Completions.ts#L24)

Since v4.0.0