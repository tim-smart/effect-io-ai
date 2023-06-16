# succeedRight

Returns an effect which succeeds with the value wrapped in a `Right`.

Part of the `Effect` module, imported from `@effect/io/Effect`.

**Signature**

```ts
export declare const succeedRight: <A>(value: A) => Effect<never, never, Either.Either<never, A>>
```
