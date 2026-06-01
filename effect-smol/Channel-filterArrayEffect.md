Package: `effect`<br />
Module: `Channel`<br />

## Channel.filterArrayEffect

Filters each element inside emitted non-empty arrays with an effectful
predicate.

**When to use**

Use when filtering array-valued channel outputs requires Effects or services,
and arrays that become empty should be skipped.

**Details**

The predicate receives the element and its index within the array. Elements
for which the predicate succeeds with `true` are kept. Arrays that become
empty are discarded. Predicate failures fail the returned channel.

**Signature**

```ts
declare const filterArrayEffect: { <OutElem, E, R>(predicate: (a: Types.NoInfer<OutElem>, index: number) => Effect.Effect<boolean, E, R>): <OutErr, OutDone, InElem, InErr, InDone, Env>(self: Channel<Arr.NonEmptyReadonlyArray<OutElem>, OutErr, OutDone, InElem, InErr, InDone, Env>) => Channel<Arr.NonEmptyReadonlyArray<OutElem>, OutErr | E, OutDone, InElem, InErr, InDone, Env | R>; <OutElem, OutErr, OutDone, InElem, InErr, InDone, Env, E, R>(self: Channel<Arr.NonEmptyReadonlyArray<OutElem>, OutErr, OutDone, InElem, InErr, InDone, Env>, predicate: (a: Types.NoInfer<OutElem>, index: number) => Effect.Effect<boolean, E, R>): Channel<Arr.NonEmptyReadonlyArray<OutElem>, OutErr | E, OutDone, InElem, InErr, InDone, Env | R>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Channel.ts#L3543)

Since v4.0.0