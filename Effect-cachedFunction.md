# cachedFunction

Returns a memoized version of the specified effectual function.

Part of the `Effect` module from the `@effect/io` package.

### Signature

```typescript
export declare const cachedFunction: <R, E, A, B>(
  f: (a: A) => Effect<R, E, B>,
  eq?: Equivalence<A> | undefined
) => Effect<never, never, (a: A) => Effect<R, E, B>>
```
