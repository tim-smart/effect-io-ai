Package: `effect`<br />
Module: `Schema`<br />

## Schema.NonEmptyArray

Type-level representation returned by `NonEmptyArray`.

**Signature**

```ts
export interface NonEmptyArray<S extends Constraint> extends
  BottomLazy<
    SchemaAST.Arrays,
    NonEmptyArray<S>
  >
{
  readonly "Type": readonly [S["Type"], ...Array<S["Type"]>]
  readonly "Encoded": readonly [S["Encoded"], ...Array<S["Encoded"]>]
  readonly "DecodingServices": S["DecodingServices"]
  readonly "EncodingServices": S["EncodingServices"]
  readonly "~type.make.in": readonly [S["~type.make"], ...Array<S["~type.make"]>]
  readonly "~type.make": readonly [S["~type.make"], ...Array<S["~type.make"]>]
  readonly "Iso": readonly [S["Iso"], ...Array<S["Iso"]>]
  readonly value: S
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Schema.ts#L4543)

Since v3.10.0