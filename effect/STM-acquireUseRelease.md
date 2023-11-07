# acquireUseRelease

Treats the specified `acquire` transaction as the acquisition of a
resource. The `acquire` transaction will be executed interruptibly. If it
is a success and is committed the specified `release` workflow will be
executed uninterruptibly as soon as the `use` workflow completes execution.

To import and use `acquireUseRelease` from the "STM" module:

```ts
import * as STM from 'effect/STM'

// Can be accessed like this
STM.acquireUseRelease
```

**Signature**

```ts
export declare const acquireUseRelease: {
  <A, R2, E2, A2, R3, E3, A3>(use: (resource: A) => STM<R2, E2, A2>, release: (resource: A) => STM<R3, E3, A3>): <R, E>(
    acquire: STM<R, E, A>
  ) => Effect.Effect<R2 | R3 | R, E2 | E3 | E, A2>
  <R, E, A, R2, E2, A2, R3, E3, A3>(
    acquire: STM<R, E, A>,
    use: (resource: A) => STM<R2, E2, A2>,
    release: (resource: A) => STM<R3, E3, A3>
  ): Effect.Effect<R | R2 | R3, E | E2 | E3, A2>
}
```
