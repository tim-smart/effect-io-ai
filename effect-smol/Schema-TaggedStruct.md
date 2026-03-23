Package: `effect`<br />
Module: `Schema`<br />

## Schema.TaggedStruct

The type produced by `TaggedStruct` — a `Struct` with an extra `_tag` field of type `tag`.

**See**

- `TaggedStruct` for the constructor

**Signature**

```ts
type TaggedStruct<Tag, Fields> = Struct<
  Simplify<{ readonly _tag: tag<Tag> } & Fields>
>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L4485)

Since v4.0.0