Package: `effect`<br />
Module: `Schema`<br />

## Schema.Tuple.Type

Computes the decoded tuple type for a tuple element schema array.

**Details**

Each element contributes its decoded `Type`; optional element schemas produce
optional tuple positions.

**Signature**

```ts
type Type<E> = Type_<E>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L3313)

Since v3.10.0