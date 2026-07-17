Package: `effect`<br />
Module: `Schema`<br />

## Schema.HashMap

Type-level representation returned by `HashMap`.

**Signature**

```ts
export interface HashMap<Key extends Constraint, Value extends Constraint> extends
  declareConstructor<
    HashMap_.HashMap<Key["Type"], Value["Type"]>,
    HashMap_.HashMap<Key["Encoded"], Value["Encoded"]>,
    readonly [Key, Value],
    HashMapIso<Key, Value>
  >
{
  readonly "Rebuild": HashMap<Key, Value>
  readonly key: Key
  readonly value: Value
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Schema.ts#L9888)

Since v3.10.0