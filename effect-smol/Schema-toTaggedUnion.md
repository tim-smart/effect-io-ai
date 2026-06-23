Package: `effect`<br />
Module: `Schema`<br />

## Schema.toTaggedUnion

Type-level representation returned by `toTaggedUnion`.

**Signature**

```ts
type toTaggedUnion<Tag, Members> = Union<Members> & TaggedUnionUtils<Tag, Members>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L6046)

Since v4.0.0