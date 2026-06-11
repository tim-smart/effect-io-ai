Package: `effect`<br />
Module: `Prompt`<br />

## Prompt.ActionDefinition

Type-level definition for the tagged `Prompt.Action` variants.

**Details**

It connects the action state and output type parameters to the `Beep`,
`NextFrame`, and `Submit` action cases.

**Signature**

```ts
export interface ActionDefinition extends Data.TaggedEnum.WithGenerics<2> {
  readonly taggedEnum: Action<this["A"], this["B"]>
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Prompt.ts#L92)

Since v4.0.0