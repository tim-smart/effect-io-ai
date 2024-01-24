# brand

Returns a nominal branded schema by applying a brand to a given schema.

```
Schema<A> + B -> Schema<A & Brand<B>>
```

To import and use `brand` from the "Schema" module:

```ts
import * as Schema from "@effect/schema/Schema"
// Can be accessed like this
Schema.brand
```

**Example**

```ts
import * as Schema from "@effect/schema/Schema"

const Int = Schema.number.pipe(Schema.int(), Schema.brand("Int"))
type Int = Schema.Schema.To<typeof Int> // number & Brand<"Int">
```

**Signature**

```ts
export declare const brand: <B extends string | symbol, A>(
  brand: B,
  options?: DocAnnotations
) => <I>(self: Schema<never, I, A>) => BrandSchema<never, I, A & Brand.Brand<B>>
```
