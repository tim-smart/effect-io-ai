Package: `effect`<br />
Module: `Prompt`<br />

## Prompt.map

Transforms the output value produced by a prompt.

**Signature**

```ts
declare const map: { <Output, Output2>(f: (output: Output) => Output2): (self: Prompt<Output>) => Prompt<Output2>; <Output, Output2>(self: Prompt<Output>, f: (output: Output) => Output2): Prompt<Output2>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Prompt.ts#L1006)

Since v4.0.0