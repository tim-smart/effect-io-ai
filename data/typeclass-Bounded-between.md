# between

Checks if a value is between the lower and upper limit of a bound.

To import and use `between` from the "Bounded" module:

```ts
import * as Bounded from '@effect/data/typeclass/Bounded'

// Can be accessed like this
Bounded.between
```

**Signature**

```ts
export declare const between: <A>(B: Bounded<A>) => (a: A) => boolean
```
