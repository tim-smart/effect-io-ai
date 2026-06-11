Package: `effect`<br />
Module: `Schema`<br />

## Schema.ReadonlyMap

Schema for readonly maps whose keys and values conform to the provided
schemas.

**Signature**

```ts
declare const ReadonlyMap: <Key extends Top, Value extends Top>(key: Key, value: Value) => $ReadonlyMap<Key, Value>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L9360)

Since v3.10.0