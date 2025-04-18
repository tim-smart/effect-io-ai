Package: `effect`<br />
Module: `Runtime`<br />

## Runtime.runSync

Executes the effect synchronously throwing in case of errors or async boundaries.

This method is effectful and should only be invoked at the edges of your
program.

**Signature**

```ts
declare const runSync: { <A, E, R>(runtime: Runtime<R>, effect: Effect.Effect<A, E, R>): A; <R>(runtime: Runtime<R>): <A, E>(effect: Effect.Effect<A, E, R>) => A; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Runtime.ts#L118)

Since v2.0.0