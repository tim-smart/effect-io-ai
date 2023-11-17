# headOption

The first entry of the array, if it exists.

To import and use `headOption` from the "TArray" module:

```ts
import * as TArray from "effect/TArray"
// Can be accessed like this
TArray.headOption
```

**Signature**

```ts
export declare const headOption: <A>(self: TArray<A>) => STM.STM<never, never, Option.Option<A>>
```
