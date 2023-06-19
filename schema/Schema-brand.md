# brand

Returns a nominal branded schema by applying a brand to a given schema.

```
Schema<A> + B -> Schema<A & Brand<B>>
```

Part of the `Schema` module, imported from `@effect/schema/Schema`.

**Example**

```ts
import * as S from '@effect/schema/Schema'
import { pipe } from '@effect/data/Function'

const Int = pipe(S.number, S.int(), S.brand('Int'))
type Int = S.To<typeof Int> // number & Brand<"Int">
```

**Signature**

```ts
export declare const brand: <B extends string | symbol, A>(
  brand: B,
  options?: AnnotationOptions<A> | undefined
) => <I>(self: Schema<I, A>) => BrandSchema<I, A & Brand<B>>
```
