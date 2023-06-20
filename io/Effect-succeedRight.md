# succeedRight

Returns an effect which succeeds with the value wrapped in a `Right`.

To import and use `succeedRight` from the "Effect" module:

```ts
import * as Effect from '@effect/io/Effect'

// Can be accessed like this
Effect.succeedRight
```

**Signature**

```ts
export declare const succeedRight: <A>(value: A) => Effect<never, never, Either.Either<never, A>>
```
