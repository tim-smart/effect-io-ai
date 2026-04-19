Package: `effect`<br />
Module: `Schema`<br />

## Schema.HashSet

Schema for an Effect `HashSet` where values must conform to the provided
schema.

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

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L8356)

Since v4.0.0