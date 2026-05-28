Package: `effect`<br />
Module: `Atom`<br />

## Atom.optimisticFn

Creates an `AtomResultFn` that applies an optimistic update before running the
underlying mutation.

**Details**

The reducer computes the provisional value from the current value and mutation
input. The wrapped function result then completes the transition or updates the
optimistic value through the provided setter callback.

**Signature**

```ts
declare const optimisticFn: { <A, W, XA, XE, OW = void>(options: { readonly reducer: (current: NoInfer<A>, update: OW) => NoInfer<W>; readonly fn: AtomResultFn<OW, XA, XE> | ((set: (result: NoInfer<W>) => void) => AtomResultFn<OW, XA, XE>); }): (self: Writable<A, Atom<AsyncResult.AsyncResult<W, unknown>>>) => AtomResultFn<OW, XA, XE>; <A, W, XA, XE, OW = void>(self: Writable<A, Atom<AsyncResult.AsyncResult<W, unknown>>>, options: { readonly reducer: (current: NoInfer<A>, update: OW) => NoInfer<W>; readonly fn: AtomResultFn<OW, XA, XE> | ((set: (result: NoInfer<W>) => void) => AtomResultFn<OW, XA, XE>); }): AtomResultFn<OW, XA, XE>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Atom.ts#L1986)

Since v4.0.0