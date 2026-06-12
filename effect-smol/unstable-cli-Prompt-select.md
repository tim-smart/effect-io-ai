Package: `effect`<br />
Module: `Prompt`<br />

## Prompt.select

Creates a prompt that lets the user select a single value from a list of
choices.

**Gotchas**

At most one choice may be marked as selected by default.

**Signature**

```ts
declare const select: <const A>(options: SelectOptions<A>) => Prompt<A>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Prompt.ts#L1121)

Since v4.0.0