Package: `effect`<br />
Module: `Schema`<br />

## Schema.$Record

Type-level representation returned by `Record`.

**Signature**

```ts
export interface $Record<Key extends Record.Key, Value extends Constraint> extends
  BottomLazy<
    SchemaAST.Objects,
    $Record<Key, Value>
  >
{
  readonly "Type": Record.Type<Key, Value>
  readonly "Encoded": Record.Encoded<Key, Value>
  readonly "DecodingServices": Record.DecodingServices<Key, Value>
  readonly "EncodingServices": Record.EncodingServices<Key, Value>
  readonly "~type.make.in": Simplify<Record.MakeIn<Key, Value>>
  readonly "~type.make": Simplify<Record.MakeIn<Key, Value>>
  readonly "Iso": Record.Iso<Key, Value>
  readonly key: Key
  readonly value: Value
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Schema.ts#L3780)

Since v4.0.0