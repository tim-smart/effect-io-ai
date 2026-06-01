Package: `effect`<br />
Module: `Channel`<br />

## Channel.runFoldEffect

Runs a channel and effectfully folds all output elements with an accumulator.

**When to use**

Use when folding channel output needs effects, services, or an additional
failure channel during accumulation.

**Details**

The initial accumulator is evaluated lazily. Each output element is passed to
the effectful accumulator function. The returned effect succeeds with the
final accumulator value.

**Signature**

```ts
declare const runFoldEffect: { <OutElem, Z, E, R>(initial: LazyArg<Z>, f: (acc: Z, o: OutElem) => Effect.Effect<Z, E, R>): <OutErr, OutDone, Env>(self: Channel<OutElem, OutErr, OutDone, unknown, unknown, unknown, Env>) => Effect.Effect<Z, OutErr | E, Env | R>; <OutElem, OutErr, OutDone, Env, Z, E, R>(self: Channel<OutElem, OutErr, OutDone, unknown, unknown, unknown, Env>, initial: LazyArg<Z>, f: (acc: Z, o: OutElem) => Effect.Effect<Z, E, R>): Effect.Effect<Z, OutErr | E, Env | R>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Channel.ts#L8046)

Since v4.0.0