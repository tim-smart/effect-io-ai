Package: `effect`<br />
Module: `Schema`<br />

## Schema.TaggedUnion

Type-level representation returned by `TaggedUnion`.

**Signature**

```ts
export interface TaggedUnion<Cases extends Record<string, Constraint>> extends
  BottomLazy<
    SchemaAST.Union<SchemaAST.Objects>,
    TaggedUnion<Cases>
  >
{
  readonly "Type": { [K in keyof Cases]: Cases[K]["Type"] }[keyof Cases]
  readonly "Encoded": { [K in keyof Cases]: Cases[K]["Encoded"] }[keyof Cases]
  readonly "DecodingServices": { [K in keyof Cases]: Cases[K]["DecodingServices"] }[keyof Cases]
  readonly "EncodingServices": { [K in keyof Cases]: Cases[K]["EncodingServices"] }[keyof Cases]
  readonly "~type.make.in": { [K in keyof Cases]: Cases[K]["~type.make"] }[keyof Cases]
  readonly "~type.make": { [K in keyof Cases]: Cases[K]["~type.make"] }[keyof Cases]
  readonly "Iso": { [K in keyof Cases]: Cases[K]["Type"] }[keyof Cases]
  readonly cases: Cases
  readonly isAnyOf: <const Keys>(
    keys: ReadonlyArray<Keys>
  ) => (value: Cases[keyof Cases]["Type"]) => value is Extract<Cases[keyof Cases]["Type"], { _tag: Keys }>
  readonly guards: { [K in keyof Cases]: (u: unknown) => u is Cases[K]["Type"] }
  readonly match: {
    <Output>(
      cases: { [K in keyof Cases]: (value: Cases[K]["Type"]) => Output }
    ): (value: Cases[keyof Cases]["Type"]) => Output
    <Output>(
      value: Cases[keyof Cases]["Type"],
      cases: { [K in keyof Cases]: (value: Cases[K]["Type"]) => Output }
    ): Output
  }
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L6128)

Since v4.0.0