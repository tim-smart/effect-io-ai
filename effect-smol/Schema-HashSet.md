Package: `effect`<br />
Module: `Schema`<br />

## Schema.HashSet

Type-level representation returned by `HashSet`.

**Signature**

```ts
export interface HashSet<Value extends Top> extends
  declareConstructor<
    HashSet_.HashSet<Value["Type"]>,
    HashSet_.HashSet<Value["Encoded"]>,
    readonly [Value],
    HashSetIso<Value>
  >
{
  readonly "Rebuild": HashSet<Value>
  readonly value: Value
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L9367)

Since v3.10.0