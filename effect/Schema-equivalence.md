# equivalence

Given a schema `Schema<A, I, R>`, returns an `Equivalence` instance for `A`.

To import and use `equivalence` from the "Schema" module:

ts
import \* as Schema from "effect/Schema"
// Can be accessed like this
Schema.equivalence
undefined

**Signature**

```ts
export declare const equivalence: <A, I, R>(schema: Schema<A, I, R>) => Equivalence.Equivalence<A>
```
