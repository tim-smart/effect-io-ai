## acquireUseRelease

Treats the specified `acquire` transaction as the acquisition of a
resource. The `acquire` transaction will be executed interruptibly. If it
is a success and is committed the specified `release` workflow will be
executed uninterruptibly as soon as the `use` workflow completes execution.

**Signature**

```ts
declare const acquireUseRelease: { <A, A2, E2, R2, A3, E3, R3>(use: (resource: A) => STM<A2, E2, R2>, release: (resource: A) => STM<A3, E3, R3>): <E, R>(acquire: STM<A, E, R>) => Effect.Effect<A2, E2 | E3 | E, R2 | R3 | R>; <A, E, R, A2, E2, R2, A3, E3, R3>(acquire: STM<A, E, R>, use: (resource: A) => STM<A2, E2, R2>, release: (resource: A) => STM<A3, E3, R3>): Effect.Effect<A2, E | E2 | E3, R | R2 | R3>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/STM.ts#L173)

Since v2.0.0