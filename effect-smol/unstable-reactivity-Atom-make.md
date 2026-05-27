Package: `effect`<br />
Module: `Atom`<br />

## Atom.make

Creates an atom from a synchronous value or read function, or from an `Effect` or `Stream` whose state is exposed as an `AsyncResult`; plain values create writable state atoms.

**Signature**

```ts
declare const make: { <A, E>(create: (get: AtomContext) => Effect.Effect<A, E, Scope.Scope | AtomRegistry>, options?: { readonly initialValue?: A | undefined; readonly uninterruptible?: boolean | undefined; }): Atom<AsyncResult.AsyncResult<A, E>>; <A, E>(effect: Effect.Effect<A, E, Scope.Scope | AtomRegistry>, options?: { readonly initialValue?: A; readonly uninterruptible?: boolean | undefined; }): Atom<AsyncResult.AsyncResult<A, E>>; <A, E>(create: (get: AtomContext) => Stream.Stream<A, E, AtomRegistry>, options?: { readonly initialValue?: A; }): Atom<AsyncResult.AsyncResult<A, E | Cause.NoSuchElementError>>; <A, E>(stream: Stream.Stream<A, E, AtomRegistry>, options?: { readonly initialValue?: A; }): Atom<AsyncResult.AsyncResult<A, E | Cause.NoSuchElementError>>; <A>(create: (get: AtomContext) => A): Atom<A>; <A>(initialValue: A): Writable<A>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Atom.ts#L441)

Since v4.0.0