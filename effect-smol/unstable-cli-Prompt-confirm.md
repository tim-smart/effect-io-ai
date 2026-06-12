Package: `effect`<br />
Module: `Prompt`<br />

## Prompt.confirm

Creates a confirmation prompt that asks the user to choose a boolean yes/no
value.

**When to use**

Use to ask for a yes/no answer that can be submitted directly.

**Details**

`initial` defaults to `false`. Enter submits the current default, yes-style
input submits `true`, no-style input submits `false`, and other input beeps.

**See**

- `toggle` for an interactive switch-before-submit boolean prompt

**Signature**

```ts
declare const confirm: (options: ConfirmOptions) => Prompt<boolean>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Prompt.ts#L730)

Since v4.0.0