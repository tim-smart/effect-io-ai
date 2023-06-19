# inheritAll

Inherits values from all `FiberRef` instances into current fiber. This
will resume immediately.

Part of the `Fiber` module, imported from `@effect/io/Fiber`.

**Signature**

```ts
export declare const inheritAll: <E, A>(self: Fiber<E, A>) => Effect.Effect<never, never, void>
```
