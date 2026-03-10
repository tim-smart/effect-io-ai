Package: `effect`<br />
Module: `Schema`<br />

## Schema.FiniteFromString

A transformation schema that parses a string into a finite number.

Decoding:
- A `string` is decoded as a finite number, rejecting `NaN`, `Infinity`, and
  `-Infinity` values.

Encoding:
- A finite number is encoded as a `string`.

**Signature**

```ts
declare const FiniteFromString: FiniteFromString
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L7524)

Since v4.0.0