Package: `effect`<br />
Module: `Schema`<br />

## Schema.HashMap

Creates a schema that validates a `HashMap` where keys and values must
conform to the provided schemas.

**Signature**

```ts
declare const HashMap: <Key extends Top, Value extends Top>(key: Key, value: Value) => HashMap<Key, Value>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L6381)

Since v4.0.0