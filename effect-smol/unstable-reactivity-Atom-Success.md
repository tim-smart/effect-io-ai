Package: `effect`<br />
Module: `Atom`<br />

## Atom.Success

Extracts the success value type from an atom whose value is an `AsyncResult`.

**Signature**

```ts
type Success<T> = T extends Atom<AsyncResult.AsyncResult<infer A, infer _>> ? A : never
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Atom.ts#L99)

Since v4.0.0