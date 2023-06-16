# succeedLeft

Returns an effect which succeeds with the value wrapped in a `Left`.

Part of the `Effect` module, imported from `@effect/io/Effect`.

**Signature**

```ts
export declare const succeedLeft: <A>(value: A) => Effect<never, never, Either.Either<A, never>>
```
