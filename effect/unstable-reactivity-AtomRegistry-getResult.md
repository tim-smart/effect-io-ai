Package: `effect`<br />
Module: `AtomRegistry`<br />

## AtomRegistry.getResult

Reads an `AsyncResult` atom from this registry as an effect.

**Details**

The effect waits for the result to leave `Initial`, and also waits through
waiting results when `suspendOnWaiting` is enabled.

**Signature**

```ts
declare const getResult: { <A, E>(atom: Atom.Atom<Result.AsyncResult<A, E>>, options?: { readonly suspendOnWaiting?: boolean | undefined; }): (self: AtomRegistry) => Effect.Effect<A, E>; <A, E>(self: AtomRegistry, atom: Atom.Atom<Result.AsyncResult<A, E>>, options?: { readonly suspendOnWaiting?: boolean | undefined; }): Effect.Effect<A, E>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/AtomRegistry.ts#L254)

Since v4.0.0