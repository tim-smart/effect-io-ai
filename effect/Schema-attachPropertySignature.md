# attachPropertySignature

Attaches a property signature with the specified key and value to the schema.
This API is useful when you want to add a property to your schema which doesn't describe the shape of the input,
but rather maps to another schema, for example when you want to add a discriminant to a simple union.

To import and use `attachPropertySignature` from the "Schema" module:

```ts
import * as Schema from "@effect/schema/Schema"
// Can be accessed like this
Schema.attachPropertySignature
```

**Example**

```ts
import * as S from "@effect/schema/Schema"
import { pipe } from "effect/Function"

const Circle = S.struct({ radius: S.number })
const Square = S.struct({ sideLength: S.number })
const Shape = S.union(
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
export declare const attachPropertySignature: {
  <K extends PropertyKey, V extends symbol | AST.LiteralValue, A extends object>(
    key: K,
    value: V,
    annotations?: Annotations.Schema<Types.Simplify<A & { readonly [k in K]: V }>, readonly []> | undefined
  ): <I, R>(schema: Schema<A, I, R>) => Schema<Types.Simplify<A & { readonly [k in K]: V }>, I, R>
  <A, I, R, K extends PropertyKey, V extends symbol | AST.LiteralValue>(
    schema: Schema<A, I, R>,
    key: K,
    value: V,
    annotations?: Annotations.Schema<Types.Simplify<A & { readonly [k in K]: V }>, readonly []> | undefined
  ): Schema<Types.Simplify<A & { readonly [k in K]: V }>, I, R>
}
```
