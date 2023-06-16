# diffFiberRefs

Returns a new workflow that executes this one and captures the changes in
`FiberRef` values.

Part of the `Effect` module from the `@effect/io` package. Also known as `Effect.diffFiberRefs`.

### Signature

```typescript
export declare const diffFiberRefs: <R, E, A>(self: Effect<R, E, A>) => Effect<R, E, [FiberRefsPatch.FiberRefsPatch, A]>
```
