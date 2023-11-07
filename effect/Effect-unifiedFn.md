# unifiedFn

Used to unify functions that would otherwise return `Effect<A, B, C> | Effect<D, E, F>`

To import and use `unifiedFn` from the "Effect" module:

```ts
import * as Effect from 'effect/Effect'

// Can be accessed like this
Effect.unifiedFn
```

**Signature**

```ts
export declare const unifiedFn: <Args extends readonly any[], Ret extends Effect<any, any, any>>(
  f: (...args: Args) => Ret
) => (...args: Args) => Effect.Unify<Ret>
```
