# toArray

Collects all elements into a chunk.

To import and use `toArray` from the "TArray" module:

```ts
import * as TArray from 'effect/TArray'

// Can be accessed like this
TArray.toArray
```

**Signature**

```ts
export declare const toArray: <A>(self: TArray<A>) => STM.STM<never, never, A[]>
```
