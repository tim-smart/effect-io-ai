# unfold

Constructs a `Arrat` by repeatedly applying the effectual function `f` as
long as it returns `Some`.

Part of the `Effect` module, imported from `@effect/io/Effect`.

### Signature

```typescript
export declare const unfold: <A, R, E, S>(
  s: S,
  f: (s: S) => Effect<R, E, Option.Option<readonly [A, S]>>
) => Effect<R, E, A[]>
```
