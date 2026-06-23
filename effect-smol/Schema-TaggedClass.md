Package: `effect`<br />
Module: `Schema`<br />

## Schema.TaggedClass

Defines a schema-backed class with an automatically populated `_tag` field.

**When to use**

Use to define class instances that are validated by a schema and participate
in tagged union matching.

**Details**

The optional `identifier` parameter overrides the schema identifier;
it defaults to the `tag` value.

**Example** (Defining a tagged class)

```ts
import { Schema } from "effect"

class Circle extends Schema.TaggedClass<Circle>()("Circle", {
  radius: Schema.Number
}) {}

const c = new Circle({ radius: 5 })
console.log(c._tag) // "Circle"
console.log(c.radius) // 5
```

**Signature**

```ts
declare const TaggedClass: <Self = never, Brand = {}>(identifier?: string) => { <Tag extends string, const Fields extends Struct.Fields>(tag: Tag, fields: Fields, annotations?: Annotations.Declaration<Self, readonly [TaggedStruct<Tag, Fields>]>): [Self] extends [never] ? MissingSelfGeneric<"Schema.TaggedClass"> : Class<Self, TaggedStruct<Tag, Fields>, Brand>; <Tag extends string, S extends Struct<Struct.Fields>>(tag: Tag, schema: S, annotations?: Annotations.Declaration<Self, readonly [Struct<Simplify<{ readonly _tag: tag<Tag>; } & S["fields"]>>]>): [Self] extends [never] ? MissingSelfGeneric<"Schema.TaggedClass"> : Class<Self, Struct<Simplify<{ readonly _tag: tag<Tag>; } & S["fields"]>>, Brand>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L12727)

Since v3.10.0