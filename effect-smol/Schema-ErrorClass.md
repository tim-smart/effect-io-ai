Package: `effect`<br />
Module: `Schema`<br />

## Schema.ErrorClass

Creates a schema-backed error class that can be used as a typed,
yieldable error in Effect programs. Combines `Class` validation with
the `YieldableError` interface so instances can be yielded directly inside
`Effect.gen`.

**Example** (Schema-backed error)

```ts
import { Effect, Schema } from "effect"

class NotFound extends Schema.ErrorClass<NotFound>("NotFound")({
  id: Schema.Number
}) {}

const program = Effect.gen(function*() {
  yield* new NotFound({ id: 1 })
})
```

**Signature**

```ts
declare const ErrorClass: <Self = never, Brand = {}>(identifier: string) => { <const Fields extends Struct.Fields>(fields: Fields, annotations?: Annotations.Declaration<Self, readonly [Struct<Fields>]>): [Self] extends [never] ? MissingSelfGeneric<"Schema.ErrorClass"> : Class<Self, Struct<Fields>, Cause_.YieldableError & Brand>; <S extends Struct<Struct.Fields>>(schema: S, annotations?: Annotations.Declaration<Self, readonly [S]>): [Self] extends [never] ? MissingSelfGeneric<"Schema.ErrorClass"> : Class<Self, S, Cause_.YieldableError & Brand>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L10666)

Since v4.0.0