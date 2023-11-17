# fromIterable

Makes a new `TArray` initialized with provided iterable.

To import and use `fromIterable` from the "TArray" module:

```ts
import * as TArray from "effect/TArray"
// Can be accessed like this
TArray.fromIterable
```

**Signature**

```ts
export declare const fromIterable: <A>(iterable: Iterable<A>) => STM.STM<never, never, TArray<A>>
```
