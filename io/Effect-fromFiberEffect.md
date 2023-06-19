# fromFiberEffect

Creates an `Effect` value that represents the exit value of the specified
fiber.

Part of the `Effect` module, imported from `@effect/io/Effect`.

**Signature**

```ts
export declare const fromFiberEffect: <R, E, A>(fiber: Effect<R, E, Fiber.Fiber<E, A>>) => Effect<R, E, A>
```
