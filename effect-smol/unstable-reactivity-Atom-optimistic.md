Package: `effect`<br />
Module: `Atom`<br />

## Atom.optimistic

Wraps an atom in a writable optimistic atom.

**Details**

Writes accept transition atoms containing `AsyncResult` values. Waiting
successes are shown optimistically while transitions run; when successful
transitions finish, the source atom is refreshed, and failures roll the value
back to the latest source value.

**Signature**

```ts
declare const optimistic: <A>(self: Atom<A>) => Writable<A, Atom<AsyncResult.AsyncResult<A, unknown>>>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Atom.ts#L1850)

Since v4.0.0