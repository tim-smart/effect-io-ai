# attachPropertySignature

Attaches a property signature with the specified key and value to the schema.
This API is useful when you want to add a property to your schema which doesn't describe the shape of the input,
but rather maps to another schema, for example when you want to add a discriminant to a simple union.

To import and use `attachPropertySignature` from the "Schema" module:

```ts
import * as Schema from '@effect/schema/Schema'

// Can be accessed like this
Schema.attachPropertySignature
```

**Example**

```ts
import * as S from '@effect/schema/Schema'
import { pipe } from '@effect/data/Function'

const Circle = S.struct({ radius: S.number })
const Square = S.struct({ sideLength: S.number })
const Shape = S.union(
  pipe(Circle, S.attachPropertySignature('kind', 'circle')),
  pipe(Square, S.attachPropertySignature('kind', 'square'))
)

assert.deepStrictEqual(S.decode(Shape)({ radius: 10 }), {
  kind: 'circle',
  radius: 10,
})
```

**Signature**

```ts
export declare const attachPropertySignature: <K extends PropertyKey, V extends AST.LiteralValue>(
  key: K,
  value: V
) => <I, A extends object>(schema: Schema<I, A>) => Schema<I, Spread<A & { readonly [k in K]: V }>>
```
