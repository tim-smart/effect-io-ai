Package: `effect`<br />
Module: `GlobalFlag`<br />

## GlobalFlag.Wizard

Defines the global action flag for starting interactive wizard mode.

**Details**

`Command.run` and `Command.runWith` handle this action specially so the
generated arguments can be passed back through the command parser.

**Signature**

```ts
declare const Wizard: Action<boolean>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/GlobalFlag.ts#L199)

Since v4.0.0