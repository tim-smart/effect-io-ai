# fromFiberEffect

Creates an `Effect` value that represents the exit value of the specified
fiber.

Part of the `Effect` module from the `@effect/io` package.

### Signature

```typescript
export declare const fromFiberEffect: <R, E, A>(fiber: Effect<R, E, Fiber.Fiber<E, A>>) => Effect<R, E, A>
```
