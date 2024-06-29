# toReadonlySet

Collects all elements into a `ReadonlySet`.

To import and use `toReadonlySet` from the "TSet" module:

```ts
import * as TSet from "effect/TSet"
// Can be accessed like this
TSet.toReadonlySet
```

**Signature**

```ts
export declare const toReadonlySet: <A>(self: TSet<A>) => STM.STM<ReadonlySet<A>, never, never>
```
