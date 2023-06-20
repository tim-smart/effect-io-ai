# min

`Monoid` that returns last minimum of elements.

To import and use `min` from the "Bounded" module:

```ts
import * as Bounded from '@effect/data/typeclass/Bounded'

// Can be accessed like this
Bounded.min
```

**Signature**

```ts
export declare const min: <A>(B: Bounded<A>) => Monoid<A>
```
