# fromFiber

Creates an `Effect` value that represents the exit value of the specified
fiber.

Part of the `Effect` module from the `@effect/io` package.

### Signature

```typescript
export declare const fromFiber: <E, A>(fiber: Fiber.Fiber<E, A>) => Effect<never, E, A>
```
