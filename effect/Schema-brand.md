Package: `effect`<br />
Module: `Schema`<br />

## Schema.brand

Returns a nominal branded schema by applying a brand to a given schema.

```
Schema<A> + B -> Schema<A & Brand<B>>
```

**Example**

```ts
import * as Schema from "effect/Schema"

const Int = Schema.Number.pipe(Schema.int(), Schema.brand("Int"))
type Int = Schema.Schema.Type<typeof Int> // number & Brand<"Int">
```

**Signature**

```ts
declare const brand: <S extends Schema.AnyNoContext, B extends string | symbol>(brand: B, annotations?: Annotations.Schema<Schema.Type<S> & Brand<B>>) => (self: S) => brand<S, B>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Schema.ts#L3154)

Since v3.10.0