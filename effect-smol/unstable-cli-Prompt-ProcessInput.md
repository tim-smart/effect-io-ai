Package: `effect`<br />
Module: `Prompt`<br />

## Prompt.ProcessInput

Represents the input that should be processed by a `Prompt` based upon user
input or an external event received during the current frame.

**Signature**

```ts
type { readonly _tag: "Input"; readonly input: Terminal.UserInput; } | { readonly _tag: "Event"; readonly value: A; } = Data.TaggedEnum<{
  readonly Input: { readonly input: Terminal.UserInput }
  readonly Event: { readonly value: A }
}>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Prompt.ts#L103)

Since v4.0.0