## ensuring

Executes the specified finalization transaction whether or not this effect
succeeds. Note that as with all STM transactions, if the full transaction
fails, everything will be rolled back.

**Signature**

```ts
declare const ensuring: { <R1, B>(finalizer: STM<B, never, R1>): <A, E, R>(self: STM<A, E, R>) => STM<A, E, R1 | R>; <A, E, R, R1, B>(self: STM<A, E, R>, finalizer: STM<B, never, R1>): STM<A, E, R | R1>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/STM.ts#L523)

Since v2.0.0