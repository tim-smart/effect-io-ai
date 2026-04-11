Package: `effect`<br />
Module: `Schema`<br />

## Schema.toTaggedUnion

The type produced by `toTaggedUnion` — a `Union` augmented with `cases`, `guards`, `isAnyOf`, and `match` utilities.

**See**

- `toTaggedUnion` for the constructor

**Signature**

```ts
type toTaggedUnion<Tag, Members> = Union<Members> & TaggedUnionUtils<Tag, Members>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L4680)

Since v4.0.0