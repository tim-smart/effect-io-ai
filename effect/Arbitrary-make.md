# make

Returns a fast-check Arbitrary for the `A` type of the provided schema.

To import and use `make` from the "Arbitrary" module:

```ts
import * as Arbitrary from "effect/Arbitrary"
// Can be accessed like this
Arbitrary.make
```

**Signature**

```ts
export declare const make: <A, I, R>(schema: Schema.Schema<A, I, R>) => FastCheck.Arbitrary<A>
```
