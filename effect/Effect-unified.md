# unified

Used to unify effects that would otherwise be `Effect<A, B, C> | Effect<D, E, F>`

To import and use `unified` from the "Effect" module:

```ts
import * as Effect from "effect/Effect"
// Can be accessed like this
Effect.unified
```

**Signature**

```ts
export declare const unified: <Ret extends Effect<any, any, any>>(f: Ret) => Effect.Unify<Ret>
```
