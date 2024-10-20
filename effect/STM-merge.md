# merge

Returns a new effect where the error channel has been merged into the
success channel to their common combined type.

To import and use `merge` from the "STM" module:

```ts
import * as STM from "effect/STM"
// Can be accessed like this
STM.merge
```

**Signature**

```ts
export declare const merge: <A, E, R>(self: STM<A, E, R>) => STM<E | A, never, R>
```
