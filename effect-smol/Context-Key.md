Package: `effect`<br />
Module: `Context`<br />

## Context.Key

The base type used for all Context keys.

**Signature**

```ts
export interface Key<out Identifier, out Shape> extends Effect<Shape, never, Identifier> {
  readonly [ServiceTypeId]: ServiceTypeId
  readonly Service: Shape
  readonly Identifier: Identifier
  readonly key: string
  readonly stack?: string | undefined
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Context.ts#L44)

Since v4.0.0