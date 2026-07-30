Package: `effect`<br />
Module: `Fiber`<br />

## Fiber.children

Retrieves the immediate children of the fiber.

**Signature**

```ts
declare const children: <A, E>(self: Fiber<A, E>) => Effect.Effect<Array<RuntimeFiber<any, any>>>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Fiber.ts#L369)

Since v2.0.0