Package: `effect`<br />
Module: `Schema`<br />

## Schema.TupleWithRest.TupleType

Constraint for tuple-like schemas that can be used as the fixed leading
portion of a `TupleWithRest` schema.

**Signature**

```ts
type TupleType = Top & {
    readonly Type: ReadonlyArray<unknown>
    readonly Encoded: ReadonlyArray<unknown>
    readonly ast: AST.Arrays
    readonly "~type.make": ReadonlyArray<unknown>
    readonly "Iso": ReadonlyArray<unknown>
  }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L3326)

Since v4.0.0