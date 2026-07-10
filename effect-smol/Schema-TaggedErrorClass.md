Package: `effect`<br />
Module: `Schema`<br />

## Schema.TaggedErrorClass

Defines a schema-backed yieldable error class with an automatically populated
`_tag` field.

**When to use**

Use to define typed errors that are schema validated, yielded in `Effect.gen`,
and matched as tagged union members.

**Example** (Defining a tagged error class)

```ts
import { Effect, Schema } from "effect"

class NotFound extends Schema.TaggedErrorClass<NotFound>()("NotFound", {
  id: Schema.Number
}) {}

const program = Effect.gen(function*() {
  yield* new NotFound({ id: 42 })
})
```

**Signature**

```ts
declare const TaggedErrorClass: <Self = never, Brand = {}>(identifier?: string) => { <Tag extends string, const Fields extends Struct.Fields>(tag: Tag, fields: Fields, annotations?: Annotations.Declaration<Self, readonly [TaggedStruct<Tag, Fields>]>): [Self] extends [never] ? MissingSelfGeneric<"Schema.TaggedErrorClass"> : Class<Self, TaggedStruct<Tag, Fields>, Cause_.YieldableError & Brand>; <Tag extends string, S extends Struct<Struct.Fields>>(tag: Tag, schema: S, annotations?: Annotations.Declaration<Self, readonly [Struct<Simplify<{ readonly _tag: tag<Tag>; } & S["fields"]>>]>): [Self] extends [never] ? MissingSelfGeneric<"Schema.TaggedErrorClass"> : Class<Self, Struct<Simplify<{ readonly _tag: tag<Tag>; } & S["fields"]>>, Cause_.YieldableError & Brand>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L12972)

Since v3.10.0