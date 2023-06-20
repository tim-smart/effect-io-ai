# max

`Semigroup` that returns last maximum of elements.

To import and use `max` from the "Semigroup" module:

```ts
import * as Semigroup from '@effect/data/typeclass/Semigroup'

// Can be accessed like this
Semigroup.max
```

**Signature**

```ts
export declare const max: <A>(O: Order<A>) => Semigroup<A>
```
