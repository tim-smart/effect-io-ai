Package: `effect`<br />
Module: `Schema`<br />

## Schema.TaggedStruct

Type-level representation returned by `TaggedStruct`.

**Signature**

```ts
type TaggedStruct<Tag, Fields> = Struct<
  Simplify<{ readonly _tag: tag<Tag> } & Fields>
>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Schema.ts#L6020)

Since v3.10.0