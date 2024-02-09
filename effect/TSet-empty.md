# empty

Makes an empty `TSet`.

To import and use `empty` from the "TSet" module:

```ts
import * as TSet from "effect/TSet"
// Can be accessed like this
TSet.empty
```

**Signature**

```ts
export declare const empty: <A>() => STM.STM<TSet<A>, never, never>
```
