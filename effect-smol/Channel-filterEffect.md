Package: `effect`<br />
Module: `Channel`<br />

## Channel.filterEffect

Filters output elements with an effectful predicate.

**When to use**

Use when the keep/discard decision depends on an Effect or service and
predicate failures should fail the returned channel.

**Details**

Elements for which the predicate succeeds with `true` are emitted. Elements
for which the predicate succeeds with `false` are discarded. Predicate
failures fail the returned channel.

**Signature**

```ts
declare const filterEffect: { <OutElem, E, R>(predicate: (a: OutElem) => Effect.Effect<boolean, E, R>): <OutErr, OutDone, InElem, InErr, InDone, Env>(self: Channel<OutElem, OutErr, OutDone, InElem, InErr, InDone, Env>) => Channel<OutElem, OutErr | E, OutDone, InElem, InErr, InDone, Env | R>; <OutElem, OutErr, OutDone, InElem, InErr, InDone, Env, E, R>(self: Channel<OutElem, OutErr, OutDone, InElem, InErr, InDone, Env>, predicate: (a: OutElem) => Effect.Effect<boolean, E, R>): Channel<OutElem, OutErr | E, OutDone, InElem, InErr, InDone, Env | R>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Channel.ts#L3325)

Since v4.0.0