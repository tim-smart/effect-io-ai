# descriptorWith

Constructs an effect based on information about the current `Fiber`.

Part of the `Effect` module from the `@effect/io` package. Also known as `Effect.descriptorWith`.

### Signature

```typescript
export declare const descriptorWith: <R, E, A>(
  f: (descriptor: Fiber.Fiber.Descriptor) => Effect<R, E, A>
) => Effect<R, E, A>
```
