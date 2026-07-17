Package: `effect`<br />
Module: `Prompt`<br />

## Prompt.Prompt

Represents an interactive terminal prompt that produces an `Output` value.

**Details**

A `Prompt` is an `Effect` that may fail with `Terminal.QuitError` and
requires the prompt environment needed to render frames, read input, and
access files or paths when a prompt uses them.

**Signature**

```ts
export interface Prompt<Output> extends Effect.Effect<Output, Terminal.QuitError, Environment> {
  readonly [TypeId]: {
    readonly _Output: Covariant<Output>
  }
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Prompt.ts#L46)

Since v4.0.0