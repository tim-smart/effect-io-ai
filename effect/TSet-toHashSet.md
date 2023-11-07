# toHashSet

Collects all elements into a `HashSet`.

To import and use `toHashSet` from the "TSet" module:

```ts
import * as TSet from 'effect/TSet'

// Can be accessed like this
TSet.toHashSet
```

**Signature**

```ts
export declare const toHashSet: <A>(self: TSet<A>) => STM.STM<never, never, HashSet.HashSet<A>>
```
