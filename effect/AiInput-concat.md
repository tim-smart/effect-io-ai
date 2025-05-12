Package: `@effect/ai`<br />
Module: `AiInput`<br />

## AiInput.concat

Concatenates the messages of one `AiInput` onto the messages of another,
creating a new `AiInput` with the messages from both.

**Signature**

```ts
declare const concat: { (other: AiInput): (self: AiInput) => AiInput; (self: AiInput, other: AiInput): AiInput; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/ai/src/AiInput.ts#L560)

Since v1.0.0