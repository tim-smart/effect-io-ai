Package: `effect`<br />
Module: `Param`<br />

## Param.withFallbackPrompt

Adds a fallback prompt that is shown when a required parameter is missing.

**When to use**

Use when a CLI should ask interactively for a missing required flag or
argument.

**Details**

`FallbackPrompt` accepts either a `Prompt` or an effect that builds one.
Effectful prompt creation is lazy and runs only when the fallback is needed.

**Gotchas**

This only handles missing options and missing arguments. Invalid values do not
prompt, and prompt cancellation re-fails with the original missing error.

**See**

- `FallbackPrompt` for accepted fallback prompt forms
- `withFallbackConfig` for loading a fallback from config
- `withDefault` for a pure default value

**Signature**

```ts
declare const withFallbackPrompt: { <B>(prompt: FallbackPrompt<B>): <Kind extends ParamKind, A>(self: Param<Kind, A>) => Param<Kind, A | B>; <Kind extends ParamKind, A, B>(self: Param<Kind, A>, prompt: FallbackPrompt<B>): Param<Kind, A | B>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Param.ts#L1421)

Since v4.0.0