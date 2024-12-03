# min

`Semigroup` that returns last minimum of elements.

To import and use `min` from the "Semigroup" module:

```ts
import * as Semigroup from "@effect/typeclass/Semigroup"
// Can be accessed like this
Semigroup.min
```

**Signature**

```ts
export declare const min: <A>(O: Order<A>) => Semigroup<A>
```
