Package: `effect`<br />
Module: `Terminal`<br />

## Terminal.QuitError

Represents an error that occurs when a user attempts to
quit out of a `Terminal` prompt for input (usually by entering `ctrl`+`c`).

**When to use**

Use when implementing terminal input or prompts that need to signal
user-requested cancellation through the typed error channel.

**See**

- `isQuitError` for checking unknown errors when handling terminal cancellation

**Signature**

```ts
declare class QuitError
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Terminal.ts#L124)

Since v4.0.0