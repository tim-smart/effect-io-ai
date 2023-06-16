# whenCase

Runs an effect when the supplied partial function matches for the given
value, otherwise does nothing.

Part of the `Effect` module, imported from `@effect/io/Effect`.

### Signature

```typescript
export declare const whenCase: <R, E, A, B>(
  evaluate: LazyArg<A>,
  pf: (a: A) => Option.Option<Effect<R, E, B>>
) => Effect<R, E, Option.Option<B>>
```
