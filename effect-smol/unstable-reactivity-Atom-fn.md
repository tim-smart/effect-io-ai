Package: `effect`<br />
Module: `Atom`<br />

## Atom.fn

Creates a writable atom for an `Effect` or `Stream` function; writing an argument starts the computation and exposes its state as an `AsyncResult`.

**Signature**

```ts
declare const fn: { <Arg>(): <E, A>(fn: (arg: Arg, get: FnContext) => Effect.Effect<A, E, Scope.Scope | AtomRegistry>, options?: { readonly initialValue?: A | undefined; readonly concurrent?: boolean | undefined; }) => AtomResultFn<Arg, A, E>; <E, A, Arg = void>(fn: (arg: Arg, get: FnContext) => Effect.Effect<A, E, Scope.Scope | AtomRegistry>, options?: { readonly initialValue?: A | undefined; readonly concurrent?: boolean | undefined; }): AtomResultFn<Arg, A, E>; <Arg>(): <E, A>(fn: (arg: Arg, get: FnContext) => Stream.Stream<A, E, AtomRegistry>, options?: { readonly initialValue?: A | undefined; readonly concurrent?: boolean | undefined; }) => AtomResultFn<Arg, A, E | Cause.NoSuchElementError>; <E, A, Arg = void>(fn: (arg: Arg, get: FnContext) => Stream.Stream<A, E, AtomRegistry>, options?: { readonly initialValue?: A | undefined; readonly concurrent?: boolean | undefined; }): AtomResultFn<Arg, A, E | Cause.NoSuchElementError>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Atom.ts#L1154)

Since v4.0.0