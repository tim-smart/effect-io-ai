# unfold

Constructs a `Chunk` by repeatedly applying the function `f` as long as it \* returns `Some`.

Part of the `Chunk` module, imported from `@effect/data/Chunk`.

**Signature**

```ts
export declare const unfold: <A, S>(s: S, f: (s: S) => Option<readonly [A, S]>) => Chunk<A>
```
