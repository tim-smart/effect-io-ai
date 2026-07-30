Package: `@effect/cli`<br />
Module: `Prompt`<br />

## Prompt.Prompt.Action

Represents the action that should be taken by a `Prompt` based upon the
user input received during the current frame.

**Signature**

```ts
type { readonly _tag: "Beep"; } | { readonly _tag: "NextFrame"; readonly state: State; } | { readonly _tag: "Submit"; readonly value: Output; } = TaggedEnum<{
    readonly Beep: {}
    readonly NextFrame: { readonly state: State }
    readonly Submit: { readonly value: Output }
  }>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/cli/src/Prompt.ts#L76)

Since v1.0.0