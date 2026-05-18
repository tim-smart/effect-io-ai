Package: `effect`<br />
Module: `CliError`<br />

## CliError.ShowHelp

Control-flow value that asks the CLI runner to render help for a command path.

It is used for explicit help requests and for parse or validation failures
that should be shown with help text. When `errors` is non-empty, the runtime
exit code is `1`; otherwise it is `0`.

**Signature**

```ts
declare class ShowHelp
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/CliError.ts#L545)

Since v4.0.0