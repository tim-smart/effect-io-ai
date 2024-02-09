# get

Extracts value from ref in array.

To import and use `get` from the "TArray" module:

```ts
import * as TArray from "effect/TArray"
// Can be accessed like this
TArray.get
```

**Signature**

```ts
export declare const get: {
  (index: number): <A>(self: TArray<A>) => STM.STM<A, never, never>
  <A>(self: TArray<A>, index: number): STM.STM<A, never, never>
}
```
