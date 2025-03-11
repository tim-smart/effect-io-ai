## repeatWhile

Repeats this `STM` effect while its result satisfies the specified
predicate.

**WARNING**: `repeatWhile` uses a busy loop to repeat the effect and will
consume a thread until it completes (it cannot yield). This is because STM
describes a single atomic transaction which must either complete, retry or
fail a transaction before yielding back to the Effect runtime.
  - Use `retryWhile` instead if you don't need to maintain transaction
    state for repeats.
  - Ensure repeating the STM effect will eventually not satisfy the
    predicate.

**Signature**

```ts
declare const repeatWhile: { <A>(predicate: Predicate<A>): <E, R>(self: STM<A, E, R>) => STM<A, E, R>; <A, E, R>(self: STM<A, E, R>, predicate: Predicate<A>): STM<A, E, R>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/STM.ts#L1624)

Since v2.0.0