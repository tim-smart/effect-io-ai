Package: `effect`<br />
Module: `Prompt`<br />

## Prompt.Action

Represents the action that should be taken by a `Prompt` based upon user
input or an external event received during the current frame.

**Signature**

```ts
type { readonly _tag: "Beep"; } | { readonly _tag: "NextFrame"; readonly state: State; } | { readonly _tag: "Submit"; readonly value: Output; } = Data.TaggedEnum<{
  readonly Beep: {}
  readonly NextFrame: { readonly state: State }
  readonly Submit: { readonly value: Output }
}>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Prompt.ts#L75)

Since v4.0.0