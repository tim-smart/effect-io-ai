Package: `effect`<br />
Module: `Effect`<br />

## Effect.awaitAllChildren

Waits for all child fibers forked by this effect to complete before this
effect completes.

**Signature**

```ts
declare const awaitAllChildren: <A, E, R>(self: Effect<A, E, R>) => Effect<A, E, R>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Effect.ts#L8157)

Since v2.0.0