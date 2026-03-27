Package: `effect`<br />
Module: `ServiceMap`<br />

## ServiceMap.Key

The base type used for all ServiceMap keys.

**Signature**

```ts
export interface Key<out Identifier, out Shape> extends Pipeable, Inspectable {
  readonly [ServiceTypeId]: ServiceTypeId
  readonly Service: Shape
  readonly Identifier: Identifier
  readonly key: string
  readonly stack?: string | undefined
  asEffect(): Effect<Shape, never, Identifier>
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/ServiceMap.ts#L43)

Since v4.0.0