Package: `effect`<br />
Module: `GlobalFlag`<br />

## GlobalFlag.Completions

Defines the `--completions` global flag, which prints a shell completion script for
the given shell.

**Details**

Accepted values are `bash`, `zsh`, `fish`, and `sh`; `sh` is normalized to
`bash`.

**Signature**

```ts
declare const Completions: Action<Option.Option<"bash" | "zsh" | "fish">>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/GlobalFlag.ts#L201)

Since v4.0.0