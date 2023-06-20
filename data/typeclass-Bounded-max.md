# max

`Monoid` that returns last maximum of elements.

To import and use `max` from the "Bounded" module:

```ts
import * as Bounded from '@effect/data/typeclass/Bounded'

// Can be accessed like this
Bounded.max
```

**Signature**

```ts
export declare const max: <A>(B: Bounded<A>) => Monoid<A>
```
