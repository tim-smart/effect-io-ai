Package: `effect`<br />
Module: `Schema`<br />

## Schema.Struct.MakeIn

Computes the input object type accepted when constructing a struct value.

**Details**

Required fields use each field schema's `~type.make` input. Fields marked
optional or with a constructor default may be omitted.

**Signature**

```ts
type MakeIn<F> = MakeInView<F>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L3340)

Since v4.0.0