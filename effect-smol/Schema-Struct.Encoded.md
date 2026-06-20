Package: `effect`<br />
Module: `Schema`<br />

## Schema.Struct.Encoded

Computes the encoded object type for a struct field map.

**Details**

Field schemas contribute their `Encoded` type. Encoded-side optionality and
mutability modifiers determine whether properties are optional or writable in
the encoded shape.

**Signature**

```ts
type { [K in keyof Encoded_<F, EncodedOptionalKeys<F>, EncodedMutableKeys<F>>]: Encoded_<F, EncodedOptionalKeys<F>, EncodedMutableKeys<F>>[K]; } = Simplify<Encoded_<F>>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L3093)

Since v3.10.0