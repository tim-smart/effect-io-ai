# makeLazy

Returns a LazyArbitrary for the `A` type of the provided schema.

To import and use `makeLazy` from the "Arbitrary" module:

ts
import \* as Arbitrary from "effect/Arbitrary"
// Can be accessed like this
Arbitrary.makeLazy
undefined

**Signature**

```ts
export declare const makeLazy: <A, I, R>(schema: Schema.Schema<A, I, R>) => LazyArbitrary<A>
```
