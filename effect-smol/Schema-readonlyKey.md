Package: `effect`<br />
Module: `Schema`<br />

## Schema.readonlyKey

Reverses `mutableKey` and returns the inner readonly schema.

**When to use**

Use to remove mutable-key wrapping from a schema field that was previously
wrapped with `mutableKey`.

**Signature**

```ts
declare const readonlyKey: readonlyKeyLambda
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L2291)

Since v4.0.0