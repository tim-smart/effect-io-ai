Package: `effect`<br />
Module: `Param`<br />

## Param.withFallbackPrompt

Adds a fallback prompt that is shown when a required parameter is missing.

**Signature**

```ts
declare const withFallbackPrompt: { <B>(prompt: Prompt.Prompt<B>): <Kind extends ParamKind, A>(self: Param<Kind, A>) => Param<Kind, A | B>; <Kind extends ParamKind, A, B>(self: Param<Kind, A>, prompt: Prompt.Prompt<B>): Param<Kind, A | B>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Param.ts#L1209)

Since v4.0.0