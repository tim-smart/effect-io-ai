# unifiedFn

Used to unify functions that would otherwise return `Effect<A, B, C> | Effect<D, E, F>`

Part of the `Effect` module from the `@effect/io` package. Also known as `Effect.unifiedFn`.

### Signature

```typescript
export declare const unifiedFn: <Args extends readonly any[], Ret extends Effect<any, any, any>>(
  f: (...args: Args) => Ret
) => (...args: Args) => Effect.Unify<Ret>
```
