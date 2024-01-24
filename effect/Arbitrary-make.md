# make

Returns a fast-check Arbitrary for the `A` type of the provided schema.

To import and use `make` from the "Arbitrary" module:

```ts
import * as Arbitrary from "@effect/schema/Arbitrary"
// Can be accessed like this
Arbitrary.make
```

**Signature**

```ts
export declare const make: <R, I, A>(schema: Schema.Schema<R, I, A>) => Arbitrary<A>
```
