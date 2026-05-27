Package: `effect`<br />
Module: `Completions`<br />

## Completions.generate

Generates a shell completion script for a command descriptor.

**When to use**

Use to produce an installable completion script when you already have a
`CommandDescriptor`.

**Details**

Dispatches by `shell` to Bash, Zsh, or Fish generation and returns a static
script string for `executableName`.

**See**

- `Shell` for supported shell names
- `CommandDescriptor` for the command shape used by completion generation

**Signature**

```ts
declare const generate: (executableName: string, shell: Shell, descriptor: CommandDescriptor) => string
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Completions.ts#L134)

Since v4.0.0