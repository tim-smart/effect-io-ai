# succeedSome

Returns an effect which succeeds with the value wrapped in a `Some`.

To import and use `succeedSome` from the "Effect" module:

```ts
import * as Effect from "effect/Effect"
// Can be accessed like this
Effect.succeedSome
```

**Signature**

```ts
export declare const succeedSome: <A>(value: A) => Effect<Option.Option<A>>
```
