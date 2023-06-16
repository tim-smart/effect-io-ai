# succeedRight

Returns an effect which succeeds with the value wrapped in a `Right`.

Part of the `Effect` module from the `@effect/io` package. Also known as `Effect.succeedRight`.

### Signature

```typescript
export declare const succeedRight: <A>(value: A) => Effect<never, never, Either.Either<never, A>>
```
