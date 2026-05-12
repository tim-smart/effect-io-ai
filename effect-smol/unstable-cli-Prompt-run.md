Package: `effect`<br />
Module: `Prompt`<br />

## Prompt.run

Executes the specified `Prompt`.

**Signature**

```ts
declare const run: <Output>(self: Prompt<Output>) => Effect.Effect<Output, Terminal.QuitError, Environment>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Prompt.ts#L885)

Since v4.0.0