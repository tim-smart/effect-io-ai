# succeedLeft

Returns an effect which succeeds with the value wrapped in a `Left`.

Part of the `Effect` module from the `@effect/io` package.

### Signature

```typescript
export declare const succeedLeft: <A>(value: A) => Effect<never, never, Either.Either<A, never>>
```
