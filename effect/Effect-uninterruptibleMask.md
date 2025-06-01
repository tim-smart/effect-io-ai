Package: `effect`<br />
Module: `Effect`<br />

## Effect.uninterruptibleMask

This function behaves like `uninterruptible`, but it also provides a
`restore` function. This function can be used to restore the interruptibility
of any specific region of code.

**Signature**

```ts
declare const uninterruptibleMask: <A, E, R>(f: (restore: <AX, EX, RX>(effect: Effect<AX, EX, RX>) => Effect<AX, EX, RX>) => Effect<A, E, R>) => Effect<A, E, R>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Effect.ts#L4982)

Since v2.0.0