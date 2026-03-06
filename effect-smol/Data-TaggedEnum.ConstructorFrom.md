Package: `effect`<br />
Module: `Data`<br />

## Data.TaggedEnum.ConstructorFrom

Function type that constructs a tagged-union variant from its fields,
excluding the keys listed in `Tag`.

Returns `void` when no fields remain after excluding `Tag` keys.

**Signature**

```ts
type ConstructorFrom<A, Tag> = (
    args: Types.VoidIfEmpty<{ readonly [P in keyof A as P extends Tag ? never : P]: A[P] }>
  ) => A
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Data.ts#L464)

Since v4.0.0