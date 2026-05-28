Package: `effect`<br />
Module: `GlobalFlag`<br />

## GlobalFlag.BuiltIns

Built-in global flags in default precedence order.

**Details**

The built-ins are `Help`, `Version`, `Completions`, and `LogLevel`.
`Command.runWith` prepends these built-ins when collecting and parsing global
flags.

**Gotchas**

Action flags are processed in active flag order and the first present action
exits, so this array controls built-in action precedence.

**See**

- `Help` for the help action flag
- `Version` for the version action flag
- `Completions` for the shell-completions action flag
- `LogLevel` for the built-in log-level setting flag

**Signature**

```ts
declare const BuiltIns: ReadonlyArray<GlobalFlag<any>>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/GlobalFlag.ts#L288)

Since v4.0.0