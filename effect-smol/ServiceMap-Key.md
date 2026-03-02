Package: `effect`<br />
Module: `ServiceMap`<br />

## ServiceMap.Key

The base type used for all ServiceMap keys.

**Signature**

```ts
export interface Key<in out Identifier, in out Shape> extends Pipeable, Inspectable {
  readonly [ServiceTypeId]: {
    readonly _Service: Types.Invariant<Shape>
    readonly _Identifier: Types.Invariant<Identifier>
  }
  readonly Service: Shape
  readonly Identifier: Identifier
  readonly key: string
  readonly stack?: string | undefined
  asEffect(): Effect<Shape, never, Identifier>
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/ServiceMap.ts#L33)

Since v4.0.0