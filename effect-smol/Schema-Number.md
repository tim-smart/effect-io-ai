Package: `effect`<br />
Module: `Schema`<br />

## Schema.Number

A schema for all numbers, including `NaN`, `Infinity`, and `-Infinity`.

**Default Json Serializer**

- If the number is finite, it is serialized as a number.
- Otherwise, it is serialized as a string ("NaN", "Infinity", or "-Infinity").

**Signature**

```ts
declare const Number: Number
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L1422)

Since v4.0.0