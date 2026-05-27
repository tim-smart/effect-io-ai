Package: `effect`<br />
Module: `Schema`<br />

## Schema.Tuple.MakeIn

Computes the input tuple type accepted when constructing a tuple value.

**Details**

Each element uses its `~type.make` input type. Optional elements and elements
with constructor defaults produce optional tuple positions.

**Signature**

```ts
type MakeIn<E> = MakeIn_<E>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L3474)

Since v4.0.0