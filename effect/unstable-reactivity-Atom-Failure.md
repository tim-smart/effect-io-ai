Package: `effect`<br />
Module: `Atom`<br />

## Atom.Failure

Extracts the failure error type from an atom whose value is an `AsyncResult`.

**Signature**

```ts
type Failure<T> = T extends Atom<AsyncResult.AsyncResult<infer _, infer E>> ? E : never
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Atom.ts#L115)

Since v4.0.0