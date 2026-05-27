Package: `effect`<br />
Module: `Atom`<br />

## Atom.PullResult

`AsyncResult` produced by `pull`, containing a non-empty batch of pulled items and a `done` flag, or `NoSuchElementError` when the stream completes without items.

**Signature**

```ts
type PullResult<A, E> = AsyncResult.AsyncResult<{
  readonly done: boolean
  readonly items: Arr.NonEmptyArray<A>
}, E | Cause.NoSuchElementError>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Atom.ts#L1246)

Since v4.0.0