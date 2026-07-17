Package: `effect`<br />
Module: `CliError`<br />

## CliError.NonShowHelpErrors

Type of CLI errors that are not `ShowHelp`.

**Details**

These errors can be accumulated and attached to `ShowHelp.errors` when the
runner should display help along with the underlying parse or validation
failures.

**Signature**

```ts
type NonShowHelpErrors = typeof NonShowHelpErrors.Type
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/CliError.ts#L532)

Since v4.0.0