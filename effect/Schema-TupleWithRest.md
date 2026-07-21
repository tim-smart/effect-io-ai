Package: `effect`<br />
Module: `Schema`<br />

## Schema.TupleWithRest

Type-level representation returned by `TupleWithRest`.

**Signature**

```ts
export interface TupleWithRest<
  S extends TupleWithRest.TupleType,
  Rest extends TupleWithRest.Rest
> extends
  BottomLazy<
    SchemaAST.Arrays,
    TupleWithRest<S, Rest>
  >
{
  readonly "Type": TupleWithRest.Type<S["Type"], Rest>
  readonly "Encoded": TupleWithRest.Encoded<S["Encoded"], Rest>
  readonly "DecodingServices": S["DecodingServices"] | Rest[number]["DecodingServices"]
  readonly "EncodingServices": S["EncodingServices"] | Rest[number]["EncodingServices"]
  readonly "~type.make.in": TupleWithRest.MakeIn<S["~type.make"], Rest>
  readonly "~type.make": TupleWithRest.MakeIn<S["~type.make"], Rest>
  readonly "Iso": TupleWithRest.Iso<S["Iso"], Rest>
  readonly schema: S
  readonly rest: Rest
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Schema.ts#L4424)

Since v4.0.0