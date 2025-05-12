Package: `effect`<br />
Module: `Effect`<br />

## Effect.daemonChildren

Returns a new workflow that will not supervise any fibers forked by this
workflow.

**Signature**

```ts
declare const daemonChildren: <A, E, R>(self: Effect<A, E, R>) => Effect<A, E, R>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Effect.ts#L6136)

Since v2.0.0