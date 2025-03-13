Package: `effect`<br />
Module: `Runtime`<br />

## Runtime.runFork

Executes the effect using the provided Scheduler or using the global
Scheduler if not provided

**Signature**

```ts
declare const runFork: <R>(runtime: Runtime<R>) => <A, E>(self: Effect.Effect<A, E, R>, options?: RunForkOptions) => Fiber.RuntimeFiber<A, E>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Runtime.ts#L84)

Since v2.0.0