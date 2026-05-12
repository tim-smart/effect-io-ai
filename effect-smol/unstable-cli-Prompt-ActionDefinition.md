Package: `effect`<br />
Module: `Prompt`<br />

## Prompt.ActionDefinition

Represents the definition of an `Action`.

Required to create a `Data.TaggedEnum` with generic type arguments.

**Signature**

```ts
export interface ActionDefinition extends Data.TaggedEnum.WithGenerics<2> {
  readonly taggedEnum: Action<this["A"], this["B"]>
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Prompt.ts#L70)

Since v4.0.0