Package: `effect`<br />
Module: `Prompt`<br />

## Prompt.multiSelect

Creates a prompt that lets the user select multiple choices and returns their
values as an array.

The prompt supports default selected choices, bulk-selection commands, and
minimum or maximum selection counts.

**Signature**

```ts
declare const multiSelect: <const A>(options: SelectOptions<A> & MultiSelectOptions) => Prompt<Array<A>>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Prompt.ts#L1120)

Since v4.0.0