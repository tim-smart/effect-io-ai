Package: `effect`<br />
Module: `Fiber`<br />

## Fiber.interruptAll

Interrupts all fibers, awaiting their interruption.

**Signature**

```ts
declare const interruptAll: (fibers: Iterable<Fiber<any, any>>) => Effect.Effect<void>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Fiber.ts#L493)

Since v2.0.0