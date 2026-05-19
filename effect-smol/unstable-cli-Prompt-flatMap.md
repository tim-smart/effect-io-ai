Package: `effect`<br />
Module: `Prompt`<br />

## Prompt.flatMap

Sequences prompts by using the output of this prompt to create the next
prompt.

**Signature**

```ts
declare const flatMap: { <Output, Output2>(f: (output: Output) => Prompt<Output2>): (self: Prompt<Output>) => Prompt<Output2>; <Output, Output2>(self: Prompt<Output>, f: (output: Output) => Prompt<Output2>): Prompt<Output2>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Prompt.ts#L848)

Since v4.0.0