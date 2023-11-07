# toReadonlyArray

Collects all elements into a `ReadonlyArray`.

To import and use `toReadonlyArray` from the "TSet" module:

```ts
import * as TSet from 'effect/TSet'

// Can be accessed like this
TSet.toReadonlyArray
```

**Signature**

```ts
export declare const toReadonlyArray: <A>(self: TSet<A>) => STM.STM<never, never, readonly A[]>
```
