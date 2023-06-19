# unified

Used to unify effects that would otherwise be `Effect<A, B, C> | Effect<D, E, F>`

Part of the `Effect` module, imported from `@effect/io/Effect`.

**Signature**

```ts
export declare const unified: <Ret extends Effect<any, any, any>>(f: Ret) => Effect.Unify<Ret>
```
