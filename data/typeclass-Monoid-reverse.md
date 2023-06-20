# reverse

The dual of a `Monoid`, obtained by swapping the arguments of `combine`.

To import and use `reverse` from the "Monoid" module:

```ts
import * as Monoid from '@effect/data/typeclass/Monoid'

// Can be accessed like this
Monoid.reverse
```

**Signature**

```ts
export declare const reverse: <A>(M: Monoid<A>) => Monoid<A>
```
