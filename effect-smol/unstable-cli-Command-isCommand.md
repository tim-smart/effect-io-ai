Package: `effect`<br />
Module: `Command`<br />

## Command.isCommand

Returns `true` if the provided value is a `Command`.

**Gotchas**

This checks for the `Command` type-id property; it does not validate the full
command shape.

**Signature**

```ts
declare const isCommand: (u: unknown) => u is Command.Any
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Command.ts#L445)

Since v4.0.0