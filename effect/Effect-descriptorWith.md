## descriptorWith

Constructs an effect based on information about the current `Fiber`.

**Signature**

```ts
declare const descriptorWith: <A, E, R>(f: (descriptor: Fiber.Fiber.Descriptor) => Effect<A, E, R>) => Effect<A, E, R>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Effect.ts#L6017)

Since v2.0.0