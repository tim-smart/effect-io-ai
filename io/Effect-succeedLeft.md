# succeedLeft

Returns an effect which succeeds with the value wrapped in a `Left`.

To import and use `succeedLeft` from the "Effect" module:

```ts
import * as Effect from '@effect/io/Effect'

// Can be accessed like this
Effect.succeedLeft
```

**Signature**

```ts
export declare const succeedLeft: <A>(value: A) => Effect<never, never, Either.Either<A, never>>
```
