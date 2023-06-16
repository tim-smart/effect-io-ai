# ensuringChildren

Acts on the children of this fiber, guaranteeing the specified callback
will be invoked, whether or not this effect succeeds.

Part of the `Effect` module, imported from `@effect/io/Effect`.

### Signature

```typescript
export declare const ensuringChildren: {
  <R1, X>(children: (fibers: Array<Fiber.RuntimeFiber<any, any>>) => Effect<R1, never, X>): <R, E, A>(
    self: Effect<R, E, A>
  ) => Effect<R1 | R, E, A>
  <R, E, A, R1, X>(
    self: Effect<R, E, A>,
    children: (fibers: Array<Fiber.RuntimeFiber<any, any>>) => Effect<R1, never, X>
  ): Effect<R | R1, E, A>
}
```
