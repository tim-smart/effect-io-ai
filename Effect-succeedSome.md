# succeedSome

Returns an effect which succeeds with the value wrapped in a `Some`.

Part of the `Effect` module from the `@effect/io` package.

### Signature

```typescript
export declare const succeedSome: <A>(value: A) => Effect<never, never, Option.Option<A>>
```
