Package: `effect`<br />
Module: `Supervisor`<br />

## Supervisor.fibersIn

Creates a new supervisor that tracks children in a set.

**Signature**

```ts
declare const fibersIn: (ref: MutableRef.MutableRef<SortedSet.SortedSet<Fiber.RuntimeFiber<any, any>>>) => Effect.Effect<Supervisor<SortedSet.SortedSet<Fiber.RuntimeFiber<any, any>>>>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Supervisor.ts#L115)

Since v2.0.0