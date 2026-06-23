Package: `effect`<br />
Module: `McpSchema`<br />

## McpSchema.Param

Schema wrapper used for resource URI template parameters.

**Details**

A `Param` behaves like the wrapped schema while carrying the parameter name
used for template compilation and completion lookup.

**Signature**

```ts
export interface Param<Name extends string, S extends Schema.Constraint> extends
  Schema.BottomLazy<
    S["ast"],
    Param<Name, S>,
    S["~type.parameters"],
    S["~type.mutability"],
    S["~type.optionality"],
    S["~type.constructor.default"],
    S["~encoded.mutability"],
    S["~encoded.optionality"]
  >
{
  readonly "Type": S["Type"]
  readonly "Encoded": S["Encoded"]
  readonly "DecodingServices": S["DecodingServices"]
  readonly "EncodingServices": S["EncodingServices"]
  readonly "Rebuild": Param<Name, S>
  readonly "~type.make.in": S["~type.make.in"]
  readonly "~type.make": S["~type.make"]
  readonly "Iso": S["Iso"]
  readonly [ParamSchemaTypeId]: typeof ParamSchemaTypeId
  readonly name: Name
  readonly schema: S
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/McpSchema.ts#L2480)

Since v4.0.0