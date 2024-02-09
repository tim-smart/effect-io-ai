# fromIterable

Creates a new `TArray` from an iterable collection of values.

To import and use `fromIterable` from the "TArray" module:

```ts
import * as TArray from "effect/TArray"
// Can be accessed like this
TArray.fromIterable
```

**Signature**

```ts
export declare const fromIterable: <A>(iterable: Iterable<A>) => STM.STM<TArray<A>, never, never>
```
