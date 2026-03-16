Package: `effect`<br />
Module: `Command`<br />

## Command.ParsedTokens

Represents the parsed tokens from command-line input before validation.

**Signature**

```ts
export interface ParsedTokens {
  readonly flags: Record<string, ReadonlyArray<string>>
  readonly arguments: ReadonlyArray<string>
  readonly errors?: ReadonlyArray<CliError.CliError>
  readonly subcommand: Option.Option<{
    readonly name: string
    readonly parsedInput: ParsedTokens
  }>
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Command.ts#L359)

Since v4.0.0