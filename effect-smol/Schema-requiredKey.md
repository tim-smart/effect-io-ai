Package: `effect`<br />
Module: `Schema`<br />

## Schema.requiredKey

Reverses `optionalKey` and returns the inner required schema.

**When to use**

Use to remove optional-key wrapping from a schema field that was previously
wrapped with `optionalKey`.

**Signature**

```ts
declare const requiredKey: requiredKeyLambda
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L2048)

Since v4.0.0