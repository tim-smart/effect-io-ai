Package: `effect`<br />
Module: `Schema`<br />

## Schema.TaggedUnion

A union schema that exposes `cases`, `guards`, `isAnyOf`, and `match` utilities keyed by the `_tag` discriminant.
Produced by `TaggedUnion`.

**See**

- `TaggedUnion` for the constructor

**Signature**

```ts
export interface TaggedUnion<Cases extends Record<string, Top>> extends
  Bottom<
    { [K in keyof Cases]: Cases[K]["Type"] }[keyof Cases],
    { [K in keyof Cases]: Cases[K]["Encoded"] }[keyof Cases],
    { [K in keyof Cases]: Cases[K]["DecodingServices"] }[keyof Cases],
    { [K in keyof Cases]: Cases[K]["EncodingServices"] }[keyof Cases],
    AST.Union<AST.Objects>,
    TaggedUnion<Cases>,
    { [K in keyof Cases]: Cases[K]["~type.make"] }[keyof Cases]
  >
{
  readonly "~rebuild.out": this
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

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L4676)

Since v4.0.0