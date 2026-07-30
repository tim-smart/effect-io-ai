Package: `effect`<br />
Module: `Effect`<br />

## Effect.validateWith

Sequentially combines two effects using a specified combiner function while
accumulating errors.

**Details**

This function combines two effects, `self` and `that`, into a single effect
by applying the provided combiner function to their results. If both effects
succeed, the combiner function is applied to their results to produce the
final value. If either effect fails, the failures are accumulated into a
combined `Cause`.

By default, effects are executed sequentially. However, the execution mode
can be controlled using the `options` parameter to enable concurrency,
batching, or customized finalizer behavior.

**Signature**

```ts
declare const validateWith: { <B, E1, R1, A, C>(that: Effect<B, E1, R1>, f: (a: A, b: B) => C, options?: { readonly concurrent?: boolean | undefined; readonly batching?: boolean | "inherit" | undefined; readonly concurrentFinalizers?: boolean | undefined; } | undefined): <E, R>(self: Effect<A, E, R>) => Effect<C, E1 | E, R1 | R>; <A, E, R, B, E1, R1, C>(self: Effect<A, E, R>, that: Effect<B, E1, R1>, f: (a: A, b: B) => C, options?: { readonly concurrent?: boolean | undefined; readonly batching?: boolean | "inherit" | undefined; readonly concurrentFinalizers?: boolean | undefined; } | undefined): Effect<C, E | E1, R | R1>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Effect.ts#L12452)

Since v2.0.0