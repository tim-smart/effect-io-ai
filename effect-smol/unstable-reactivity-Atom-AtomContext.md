Package: `effect`<br />
Module: `Atom`<br />

## Atom.AtomContext

Context passed to atom read functions for reading dependencies, awaiting `AsyncResult` or `Option` values, managing subscriptions and finalizers, refreshing atoms, and updating writable atoms.

**Signature**

```ts
export interface AtomContext {
  <A>(atom: Atom<A>): A
  get<A>(this: AtomContext, atom: Atom<A>): A
  result<A, E>(this: AtomContext, atom: Atom<AsyncResult.AsyncResult<A, E>>, options?: {
    readonly suspendOnWaiting?: boolean | undefined
  }): Effect.Effect<A, E>
  resultOnce<A, E>(this: AtomContext, atom: Atom<AsyncResult.AsyncResult<A, E>>, options?: {
    readonly suspendOnWaiting?: boolean | undefined
  }): Effect.Effect<A, E>
  once<A>(this: AtomContext, atom: Atom<A>): A
  addFinalizer(this: AtomContext, f: () => void): void
  mount<A>(this: AtomContext, atom: Atom<A>): void
  refresh<A>(this: AtomContext, atom: Atom<A>): void
  refreshSelf(this: AtomContext): void
  self<A>(this: AtomContext): Option.Option<A>
  setSelf<A>(this: AtomContext, a: A): void
  set<R, W>(this: AtomContext, atom: Writable<R, W>, value: W): void
  setResult<A, E, W>(this: AtomContext, atom: Writable<AsyncResult.AsyncResult<A, E>, W>, value: W): Effect.Effect<A, E>
  some<A>(this: AtomContext, atom: Atom<Option.Option<A>>): Effect.Effect<A>
  someOnce<A>(this: AtomContext, atom: Atom<Option.Option<A>>): Effect.Effect<A>
  stream<A>(this: AtomContext, atom: Atom<A>, options?: {
    readonly withoutInitialValue?: boolean
    readonly bufferSize?: number
  }): Stream.Stream<A>
  streamResult<A, E>(this: AtomContext, atom: Atom<AsyncResult.AsyncResult<A, E>>, options?: {
    readonly withoutInitialValue?: boolean
    readonly bufferSize?: number
  }): Stream.Stream<A, E>
  subscribe<A>(this: AtomContext, atom: Atom<A>, f: (_: A) => void, options?: {
    readonly immediate?: boolean
  }): void
  readonly registry: Registry.AtomRegistry
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Atom.ts#L187)

Since v4.0.0