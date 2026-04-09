Package: `effect`<br />
Module: `Flag`<br />

## Flag.choice

Simpler variant of `choiceWithValue` which maps each string to itself.

**Signature**

```ts
declare const choice: <const Choices extends ReadonlyArray<string>>(name: string, choices: Choices) => Flag<Choices[number]>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Flag.ts#L144)

Since v4.0.0