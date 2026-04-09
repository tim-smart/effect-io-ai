Package: `effect`<br />
Module: `CliError`<br />

## CliError.NonShowHelpErrors

Represents errors that should not trigger the display of the CLI's help
documentation.

**Signature**

```ts
declare const NonShowHelpErrors: Schema.Union<readonly [typeof UnrecognizedOption, typeof DuplicateOption, typeof MissingOption, typeof MissingArgument, typeof InvalidValue, typeof UnknownSubcommand, typeof UserError]>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/CliError.ts#L442)

Since v4.0.0