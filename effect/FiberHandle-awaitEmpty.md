Package: `effect`<br />
Module: `FiberHandle`<br />

## FiberHandle.awaitEmpty

Wait for the fiber in the FiberHandle to complete.

**Signature**

```ts
declare const awaitEmpty: <A, E>(self: FiberHandle<A, E>) => Effect.Effect<void, E>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/FiberHandle.ts#L530)

Since v3.13.0