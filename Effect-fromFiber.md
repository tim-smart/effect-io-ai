# fromFiber

Creates an `Effect` value that represents the exit value of the specified
fiber.

Part of the `Effect` module, imported from `@effect/io/Effect`.

### Signature

```typescript
export declare const fromFiber: <E, A>(fiber: Fiber.Fiber<E, A>) => Effect<never, E, A>
```
