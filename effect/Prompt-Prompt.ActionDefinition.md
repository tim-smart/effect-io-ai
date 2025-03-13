Package: `@effect/cli`<br />
Module: `Prompt`<br />

## Prompt.Prompt.ActionDefinition

Represents the definition of an `Action`.

Required to create a `Data.TaggedEnum` with generic type arguments.

**Signature**

```ts
export interface ActionDefinition extends TaggedEnum.WithGenerics<2> {
    readonly taggedEnum: Action<this["A"], this["B"]>
  }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/cli/src/Prompt.ts#L90)

Since v1.0.0