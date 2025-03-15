Package: `effect`<br />
Module: `Schema`<br />

## Schema.attachPropertySignature

Attaches a property signature with the specified key and value to the schema.
This API is useful when you want to add a property to your schema which doesn't describe the shape of the input,
but rather maps to another schema, for example when you want to add a discriminant to a simple union.

**Example**

```ts
import * as assert from "node:assert"
import * as S from "effect/Schema"
import { pipe } from "effect/Function"

const Circle = S.Struct({ radius: S.Number })
const Square = S.Struct({ sideLength: S.Number })
const Shape = S.Union(
  Circle.pipe(S.attachPropertySignature("kind", "circle")),
  Square.pipe(S.attachPropertySignature("kind", "square"))
)

assert.deepStrictEqual(S.decodeSync(Shape)({ radius: 10 }), {
  kind: "circle",
  radius: 10
})
```

**Signature**

```ts
declare const attachPropertySignature: { <K extends PropertyKey, V extends AST.LiteralValue | symbol, A>(key: K, value: V, annotations?: Annotations.Schema<Simplify<A & { readonly [k in K]: V; }>>): <I, R>(schema: SchemaClass<A, I, R>) => SchemaClass<Simplify<A & { readonly [k in K]: V; }>, I, R>; <A, I, R, K extends PropertyKey, V extends AST.LiteralValue | symbol>(schema: Schema<A, I, R>, key: K, value: V, annotations?: Annotations.Schema<Simplify<A & { readonly [k in K]: V; }>>): SchemaClass<Simplify<A & { readonly [k in K]: V; }>, I, R>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Schema.ts#L4087)

Since v3.10.0