Package: `effect`<br />
Module: `Schema`<br />

## Schema.Tuple.Encoded

Computes the encoded tuple type for a tuple element schema array.

**Details**

Each element contributes its `Encoded` type; encoded-side optional element
schemas produce optional tuple positions.

**Signature**

```ts
type Encoded<E> = Encoded_<E>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L3594)

Since v3.10.0