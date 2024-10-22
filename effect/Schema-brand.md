# brand

Returns a nominal branded schema by applying a brand to a given schema.

```
Schema<A> + B -> Schema<A & Brand<B>>
```

To import and use `brand` from the "Schema" module:

```ts
import * as Schema from "effect/Schema"
// Can be accessed like this
Schema.brand
```

**Example**

```ts
import * as Schema from "effect/Schema"

const Int = Schema.Number.pipe(Schema.int(), Schema.brand("Int"))
type Int = Schema.Schema.Type<typeof Int> // number & Brand<"Int">
```

**Signature**

```ts
export declare const brand: <S extends Schema.AnyNoContext, B extends string | symbol>(
  brand: B,
  annotations?: Annotations.Schema<Schema.Type<S> & Brand<B>>
) => (self: S) => brand<S, B>
```
