# diffFiberRefs

Returns a new workflow that executes this one and captures the changes in
`FiberRef` values.

Part of the `Effect` module, imported from `@effect/io/Effect`.

**Signature**

```ts
export declare const diffFiberRefs: <R, E, A>(self: Effect<R, E, A>) => Effect<R, E, [FiberRefsPatch.FiberRefsPatch, A]>
```
