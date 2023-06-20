# strict

Return an `Equivalence` that uses strict equality (===) to compare values.

To import and use `strict` from the "Equivalence" module:

```ts
import * as Equivalence from '@effect/data/typeclass/Equivalence'

// Can be accessed like this
Equivalence.strict
```

**Signature**

```ts
export declare const strict: <A>() => Equivalence<A>
```
