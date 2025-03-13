Package: `effect`<br />
Module: `Deferred`<br />

## Deferred.interrupt

Completes the `Deferred` with interruption. This will interrupt all fibers
waiting on the value of the `Deferred` with the `FiberId` of the fiber
calling this method.

**Signature**

```ts
declare const interrupt: <A, E>(self: Deferred<A, E>) => Effect.Effect<boolean>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Deferred.ts#L230)

Since v2.0.0