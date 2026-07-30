Package: `effect`<br />
Module: `Fiber`<br />

## Fiber.inheritAll

Inherits values from all `FiberRef` instances into current fiber. This
will resume immediately.

**Signature**

```ts
declare const inheritAll: <A, E>(self: Fiber<A, E>) => Effect.Effect<void>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Fiber.ts#L441)

Since v2.0.0