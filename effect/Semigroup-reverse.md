# reverse

The dual of a `Semigroup`, obtained by flipping the arguments of `combine`.

To import and use `reverse` from the "Semigroup" module:

ts
import \* as Semigroup from "@effect/typeclass/Semigroup"
// Can be accessed like this
Semigroup.reverse
undefined

**Signature**

```ts
export declare const reverse: <A>(S: Semigroup<A>) => Semigroup<A>
```
