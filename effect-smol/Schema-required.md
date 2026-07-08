Package: `effect`<br />
Module: `Schema`<br />

## Schema.required

Reverses `optional` and returns the inner schema.

**When to use**

Use to remove optional wrapping from a schema field that was previously
wrapped with `optional`.

**Details**

This also unwraps the `UndefinedOr` member added by `optional`.

**Signature**

```ts
declare const required: requiredLambda
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L2406)

Since v3.10.0