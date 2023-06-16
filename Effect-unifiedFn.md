# unifiedFn

Used to unify functions that would otherwise return `Effect<A, B, C> | Effect<D, E, F>`

Part of the `Effect` module, imported from `@effect/io/Effect`.

**Signature**

```ts
export declare const unifiedFn: <Args extends readonly any[], Ret extends Effect<any, any, any>>(
  f: (...args: Args) => Ret
) => (...args: Args) => Effect.Unify<Ret>
```
