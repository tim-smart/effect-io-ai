Package: `effect`<br />
Module: `Schema`<br />

## Schema.ReadonlyMap

Creates a schema that validates a `ReadonlyMap` where keys and values must
conform to the provided schemas.

**Signature**

```ts
declare const ReadonlyMap: <Key extends Top, Value extends Top>(key: Key, value: Value) => $ReadonlyMap<Key, Value>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L8104)

Since v4.0.0