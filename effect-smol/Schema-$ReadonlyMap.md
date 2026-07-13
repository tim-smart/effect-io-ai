Package: `effect`<br />
Module: `Schema`<br />

## Schema.$ReadonlyMap

Type-level representation returned by `ReadonlyMap`.

**Signature**

```ts
export interface $ReadonlyMap<Key extends Constraint, Value extends Constraint> extends
  declareConstructor<
    globalThis.ReadonlyMap<Key["Type"], Value["Type"]>,
    globalThis.ReadonlyMap<Key["Encoded"], Value["Encoded"]>,
    readonly [Key, Value],
    ReadonlyMapIso<Key, Value>
  >
{
  readonly "Rebuild": $ReadonlyMap<Key, Value>
  readonly key: Key
  readonly value: Value
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L9703)

Since v4.0.0