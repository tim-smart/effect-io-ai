Package: `effect`<br />
Module: `Atom`<br />

## Atom.AtomResultFn

Writable async function atom whose value is an `AsyncResult` and whose writes accept function arguments plus `Reset` and `Interrupt` controls.

**Signature**

```ts
export interface AtomResultFn<Arg, A, E = never>
  extends Writable<AsyncResult.AsyncResult<A, E>, Arg | Reset | Interrupt>
{}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Atom.ts#L1078)

Since v4.0.0