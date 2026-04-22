Package: `effect`<br />
Module: `Schema`<br />

## Schema.tag

The type produced by `tag` — a literal schema with a constructor default.

Used as the type of the `_tag` field in `TaggedStruct` and related helpers.

**See**

- `tag` for the constructor

**Signature**

```ts
export interface tag<Tag extends AST.LiteralValue> extends withConstructorDefault<Literal<Tag>> {}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L4528)

Since v4.0.0