Package: `effect`<br />
Module: `Prompt`<br />

## Prompt.run

Runs a prompt by reading terminal input and rendering prompt frames until the
prompt submits a value.

**Gotchas**

The returned effect may fail with `Terminal.QuitError` if terminal input ends
or the prompt is quit.

**Signature**

```ts
declare const run: <Output>(self: Prompt<Output>) => Effect.Effect<Output, Terminal.QuitError, Environment>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Prompt.ts#L1007)

Since v4.0.0