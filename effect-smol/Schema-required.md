Package: `effect`<br />
Module: `Schema`<br />

## Schema.required

Reverses `optional`, returning the inner schema (unwrapping `UndefinedOr`).
Only applicable to schemas already wrapped with `optional`.

**Signature**

```ts
declare const required: requiredLambda
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L1703)

Since v3.10.0